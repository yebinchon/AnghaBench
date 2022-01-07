
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct qstr {int name; } ;
struct inode {int i_ctime; int i_mtime; int i_mode; int i_size; int i_ino; int i_nlink; struct super_block* i_sb; } ;
struct hfs_find_data {int search_key; TYPE_1__* tree; } ;
typedef int hfsplus_cat_entry ;
struct TYPE_4__ {int cat_tree; } ;
struct TYPE_3__ {int depth; } ;


 int CAT_MOD ;
 int EEXIST ;
 int ENOENT ;
 int HFSPLUS_FILE_THREAD ;
 int HFSPLUS_FOLDER_THREAD ;
 int HFSPLUS_I_CAT_DIRTY ;
 TYPE_2__* HFSPLUS_SB (struct super_block*) ;
 scalar_t__ S_ISDIR (int ) ;
 int current_time (struct inode*) ;
 int hfs_bmap_reserve (TYPE_1__*,int) ;
 int hfs_brec_find (struct hfs_find_data*,int ) ;
 int hfs_brec_insert (struct hfs_find_data*,int *,int) ;
 int hfs_brec_remove (struct hfs_find_data*) ;
 int hfs_dbg (int ,char*,int ,int ,int ) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;
 int hfs_find_rec_by_key ;
 int hfsplus_cat_build_key (struct super_block*,int ,int ,struct qstr const*) ;
 int hfsplus_cat_build_key_with_cnid (struct super_block*,int ,int ) ;
 int hfsplus_cat_build_record (int *,int ,struct inode*) ;
 int hfsplus_fill_cat_thread (struct super_block*,int *,int ,int ,struct qstr const*) ;
 int hfsplus_mark_inode_dirty (struct inode*,int ) ;
 int hfsplus_subfolders_inc (struct inode*) ;
 scalar_t__ unlikely (int) ;

int hfsplus_create_cat(u32 cnid, struct inode *dir,
  const struct qstr *str, struct inode *inode)
{
 struct super_block *sb = dir->i_sb;
 struct hfs_find_data fd;
 hfsplus_cat_entry entry;
 int entry_size;
 int err;

 hfs_dbg(CAT_MOD, "create_cat: %s,%u(%d)\n",
  str->name, cnid, inode->i_nlink);
 err = hfs_find_init(HFSPLUS_SB(sb)->cat_tree, &fd);
 if (err)
  return err;





 err = hfs_bmap_reserve(fd.tree, 2 * fd.tree->depth);
 if (err)
  goto err2;

 hfsplus_cat_build_key_with_cnid(sb, fd.search_key, cnid);
 entry_size = hfsplus_fill_cat_thread(sb, &entry,
  S_ISDIR(inode->i_mode) ?
   HFSPLUS_FOLDER_THREAD : HFSPLUS_FILE_THREAD,
  dir->i_ino, str);
 if (unlikely(entry_size < 0)) {
  err = entry_size;
  goto err2;
 }

 err = hfs_brec_find(&fd, hfs_find_rec_by_key);
 if (err != -ENOENT) {
  if (!err)
   err = -EEXIST;
  goto err2;
 }
 err = hfs_brec_insert(&fd, &entry, entry_size);
 if (err)
  goto err2;

 err = hfsplus_cat_build_key(sb, fd.search_key, dir->i_ino, str);
 if (unlikely(err))
  goto err1;

 entry_size = hfsplus_cat_build_record(&entry, cnid, inode);
 err = hfs_brec_find(&fd, hfs_find_rec_by_key);
 if (err != -ENOENT) {

  if (!err)
   err = -EEXIST;
  goto err1;
 }
 err = hfs_brec_insert(&fd, &entry, entry_size);
 if (err)
  goto err1;

 dir->i_size++;
 if (S_ISDIR(inode->i_mode))
  hfsplus_subfolders_inc(dir);
 dir->i_mtime = dir->i_ctime = current_time(dir);
 hfsplus_mark_inode_dirty(dir, HFSPLUS_I_CAT_DIRTY);

 hfs_find_exit(&fd);
 return 0;

err1:
 hfsplus_cat_build_key_with_cnid(sb, fd.search_key, cnid);
 if (!hfs_brec_find(&fd, hfs_find_rec_by_key))
  hfs_brec_remove(&fd);
err2:
 hfs_find_exit(&fd);
 return err;
}
