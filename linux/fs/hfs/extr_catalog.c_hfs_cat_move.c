
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Flags; } ;
union hfs_cat_rec {int type; TYPE_1__ file; } ;
typedef int u32 ;
struct super_block {int dummy; } ;
struct qstr {int name; } ;
struct inode {int i_ino; void* i_ctime; void* i_mtime; int i_size; struct super_block* i_sb; } ;
struct hfs_find_data {int entrylength; int bnode; int search_key; int entryoffset; TYPE_2__* tree; } ;
typedef int entry ;
struct TYPE_6__ {int cat_tree; } ;
struct TYPE_5__ {int depth; } ;


 int CAT_MOD ;
 int EEXIST ;
 int EIO ;
 int ENOENT ;
 int HFS_CDR_FIL ;
 int HFS_CDR_FTH ;
 int HFS_CDR_THD ;
 int HFS_FIL_THD ;
 TYPE_3__* HFS_SB (struct super_block*) ;
 void* current_time (struct inode*) ;
 int hfs_bmap_reserve (TYPE_2__*,int) ;
 int hfs_bnode_put (int ) ;
 int hfs_bnode_read (int ,union hfs_cat_rec*,int ,int) ;
 int hfs_brec_find (struct hfs_find_data*) ;
 int hfs_brec_insert (struct hfs_find_data*,union hfs_cat_rec*,int) ;
 int hfs_brec_remove (struct hfs_find_data*) ;
 int hfs_cat_build_key (struct super_block*,int ,int ,struct qstr const*) ;
 int hfs_cat_build_thread (struct super_block*,union hfs_cat_rec*,int ,int ,struct qstr const*) ;
 int hfs_dbg (int ,char*,int ,int ,int ,int ,int ) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;
 int mark_inode_dirty (struct inode*) ;

int hfs_cat_move(u32 cnid, struct inode *src_dir, const struct qstr *src_name,
   struct inode *dst_dir, const struct qstr *dst_name)
{
 struct super_block *sb;
 struct hfs_find_data src_fd, dst_fd;
 union hfs_cat_rec entry;
 int entry_size, type;
 int err;

 hfs_dbg(CAT_MOD, "rename_cat: %u - %lu,%s - %lu,%s\n",
  cnid, src_dir->i_ino, src_name->name,
  dst_dir->i_ino, dst_name->name);
 sb = src_dir->i_sb;
 err = hfs_find_init(HFS_SB(sb)->cat_tree, &src_fd);
 if (err)
  return err;
 dst_fd = src_fd;





 err = hfs_bmap_reserve(src_fd.tree, 2 * src_fd.tree->depth);
 if (err)
  goto out;


 hfs_cat_build_key(sb, src_fd.search_key, src_dir->i_ino, src_name);
 err = hfs_brec_find(&src_fd);
 if (err)
  goto out;
 if (src_fd.entrylength > sizeof(entry) || src_fd.entrylength < 0) {
  err = -EIO;
  goto out;
 }

 hfs_bnode_read(src_fd.bnode, &entry, src_fd.entryoffset,
       src_fd.entrylength);


 hfs_cat_build_key(sb, dst_fd.search_key, dst_dir->i_ino, dst_name);
 err = hfs_brec_find(&dst_fd);
 if (err != -ENOENT) {
  if (!err)
   err = -EEXIST;
  goto out;
 }

 err = hfs_brec_insert(&dst_fd, &entry, src_fd.entrylength);
 if (err)
  goto out;
 dst_dir->i_size++;
 dst_dir->i_mtime = dst_dir->i_ctime = current_time(dst_dir);
 mark_inode_dirty(dst_dir);


 hfs_cat_build_key(sb, src_fd.search_key, src_dir->i_ino, src_name);
 err = hfs_brec_find(&src_fd);
 if (err)
  goto out;
 err = hfs_brec_remove(&src_fd);
 if (err)
  goto out;
 src_dir->i_size--;
 src_dir->i_mtime = src_dir->i_ctime = current_time(src_dir);
 mark_inode_dirty(src_dir);

 type = entry.type;
 if (type == HFS_CDR_FIL && !(entry.file.Flags & HFS_FIL_THD))
  goto out;


 hfs_cat_build_key(sb, src_fd.search_key, cnid, ((void*)0));
 err = hfs_brec_find(&src_fd);
 if (err)
  goto out;
 err = hfs_brec_remove(&src_fd);
 if (err)
  goto out;


 hfs_cat_build_key(sb, dst_fd.search_key, cnid, ((void*)0));
 entry_size = hfs_cat_build_thread(sb, &entry, type == HFS_CDR_FIL ? HFS_CDR_FTH : HFS_CDR_THD,
     dst_dir->i_ino, dst_name);
 err = hfs_brec_find(&dst_fd);
 if (err != -ENOENT) {
  if (!err)
   err = -EEXIST;
  goto out;
 }
 err = hfs_brec_insert(&dst_fd, &entry, entry_size);
out:
 hfs_bnode_put(dst_fd.bnode);
 hfs_find_exit(&src_fd);
 return err;
}
