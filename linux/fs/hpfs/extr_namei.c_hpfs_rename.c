
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct quad_buffer_head {int dummy; } ;
struct inode {int i_sb; int i_ino; int i_mode; } ;
struct hpfs_dirent {int hidden; int * name; } ;
struct fnode {unsigned int len; int * name; int up; } ;
struct TYPE_3__ {unsigned char* name; unsigned int len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
typedef int dnode_secno ;
struct TYPE_4__ {int i_parent_dir; int i_dno; } ;


 int EFSERROR ;
 int EINVAL ;
 int ENOENT ;
 int ENOSPC ;
 unsigned int RENAME_NOREPLACE ;
 scalar_t__ S_ISDIR (int ) ;
 int brelse (struct buffer_head*) ;
 int clear_nlink (struct inode*) ;
 int copy_de (struct hpfs_dirent*,struct hpfs_dirent*) ;
 int cpu_to_le32 (int ) ;
 struct inode* d_inode (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int hpfs_add_dirent (struct inode*,unsigned char const*,unsigned int,struct hpfs_dirent*) ;
 int hpfs_adjust_length (unsigned char const*,unsigned int*) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_chk_name (unsigned char const*,unsigned int*) ;
 int hpfs_error (int ,char*) ;
 TYPE_2__* hpfs_i (struct inode*) ;
 int hpfs_lock (int ) ;
 struct fnode* hpfs_map_fnode (int ,int ,struct buffer_head**) ;
 int hpfs_mark_4buffers_dirty (struct quad_buffer_head*) ;
 int hpfs_remove_dirent (struct inode*,int ,struct hpfs_dirent*,struct quad_buffer_head*,int) ;
 int hpfs_unlock (int ) ;
 int hpfs_update_directory_times (struct inode*) ;
 int inc_nlink (struct inode*) ;
 struct hpfs_dirent* map_dirent (struct inode*,int ,unsigned char const*,unsigned int,int *,struct quad_buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int memcpy (int *,unsigned char const*,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int hpfs_rename(struct inode *old_dir, struct dentry *old_dentry,
         struct inode *new_dir, struct dentry *new_dentry,
         unsigned int flags)
{
 const unsigned char *old_name = old_dentry->d_name.name;
 unsigned old_len = old_dentry->d_name.len;
 const unsigned char *new_name = new_dentry->d_name.name;
 unsigned new_len = new_dentry->d_name.len;
 struct inode *i = d_inode(old_dentry);
 struct inode *new_inode = d_inode(new_dentry);
 struct quad_buffer_head qbh, qbh1;
 struct hpfs_dirent *dep, *nde;
 struct hpfs_dirent de;
 dnode_secno dno;
 int r;
 struct buffer_head *bh;
 struct fnode *fnode;
 int err;

 if (flags & ~RENAME_NOREPLACE)
  return -EINVAL;

 if ((err = hpfs_chk_name(new_name, &new_len))) return err;
 err = 0;
 hpfs_adjust_length(old_name, &old_len);

 hpfs_lock(i->i_sb);



 if (new_inode && S_ISDIR(new_inode->i_mode)) {
  err = -EINVAL;
  goto end1;
 }

 if (!(dep = map_dirent(old_dir, hpfs_i(old_dir)->i_dno, old_name, old_len, &dno, &qbh))) {
  hpfs_error(i->i_sb, "lookup succeeded but map dirent failed");
  err = -ENOENT;
  goto end1;
 }
 copy_de(&de, dep);
 de.hidden = new_name[0] == '.';

 if (new_inode) {
  int r;
  if ((r = hpfs_remove_dirent(old_dir, dno, dep, &qbh, 1)) != 2) {
   if ((nde = map_dirent(new_dir, hpfs_i(new_dir)->i_dno, new_name, new_len, ((void*)0), &qbh1))) {
    clear_nlink(new_inode);
    copy_de(nde, &de);
    memcpy(nde->name, new_name, new_len);
    hpfs_mark_4buffers_dirty(&qbh1);
    hpfs_brelse4(&qbh1);
    goto end;
   }
   hpfs_error(new_dir->i_sb, "hpfs_rename: could not find dirent");
   err = -EFSERROR;
   goto end1;
  }
  err = -ENOSPC;
  goto end1;
 }

 if (new_dir == old_dir) hpfs_brelse4(&qbh);

 if ((r = hpfs_add_dirent(new_dir, new_name, new_len, &de))) {
  if (r == -1) hpfs_error(new_dir->i_sb, "hpfs_rename: dirent already exists!");
  err = r == 1 ? -ENOSPC : -EFSERROR;
  if (new_dir != old_dir) hpfs_brelse4(&qbh);
  goto end1;
 }

 if (new_dir == old_dir)
  if (!(dep = map_dirent(old_dir, hpfs_i(old_dir)->i_dno, old_name, old_len, &dno, &qbh))) {
   hpfs_error(i->i_sb, "lookup succeeded but map dirent failed at #2");
   err = -ENOENT;
   goto end1;
  }

 if ((r = hpfs_remove_dirent(old_dir, dno, dep, &qbh, 0))) {
  hpfs_error(i->i_sb, "hpfs_rename: could not remove dirent");
  err = r == 2 ? -ENOSPC : -EFSERROR;
  goto end1;
 }

end:
 hpfs_i(i)->i_parent_dir = new_dir->i_ino;
 if (S_ISDIR(i->i_mode)) {
  inc_nlink(new_dir);
  drop_nlink(old_dir);
 }
 if ((fnode = hpfs_map_fnode(i->i_sb, i->i_ino, &bh))) {
  fnode->up = cpu_to_le32(new_dir->i_ino);
  fnode->len = new_len;
  memcpy(fnode->name, new_name, new_len>15?15:new_len);
  if (new_len < 15) memset(&fnode->name[new_len], 0, 15 - new_len);
  mark_buffer_dirty(bh);
  brelse(bh);
 }
end1:
 if (!err) {
  hpfs_update_directory_times(old_dir);
  hpfs_update_directory_times(new_dir);
 }
 hpfs_unlock(i->i_sb);
 return err;
}
