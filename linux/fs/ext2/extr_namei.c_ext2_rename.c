
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct inode {void* i_ctime; int i_mode; } ;
struct ext2_dir_entry_2 {int dummy; } ;
struct dentry {int d_name; } ;


 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOTEMPTY ;
 unsigned int RENAME_NOREPLACE ;
 scalar_t__ S_ISDIR (int ) ;
 void* current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int dquot_initialize (struct inode*) ;
 int drop_nlink (struct inode*) ;
 int ext2_add_link (struct dentry*,struct inode*) ;
 int ext2_delete_entry (struct ext2_dir_entry_2*,struct page*) ;
 struct ext2_dir_entry_2* ext2_dotdot (struct inode*,struct page**) ;
 int ext2_empty_dir (struct inode*) ;
 struct ext2_dir_entry_2* ext2_find_entry (struct inode*,int *,struct page**) ;
 int ext2_set_link (struct inode*,struct ext2_dir_entry_2*,struct page*,struct inode*,int) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int kunmap (struct page*) ;
 int mark_inode_dirty (struct inode*) ;
 int put_page (struct page*) ;

__attribute__((used)) static int ext2_rename (struct inode * old_dir, struct dentry * old_dentry,
   struct inode * new_dir, struct dentry * new_dentry,
   unsigned int flags)
{
 struct inode * old_inode = d_inode(old_dentry);
 struct inode * new_inode = d_inode(new_dentry);
 struct page * dir_page = ((void*)0);
 struct ext2_dir_entry_2 * dir_de = ((void*)0);
 struct page * old_page;
 struct ext2_dir_entry_2 * old_de;
 int err;

 if (flags & ~RENAME_NOREPLACE)
  return -EINVAL;

 err = dquot_initialize(old_dir);
 if (err)
  goto out;

 err = dquot_initialize(new_dir);
 if (err)
  goto out;

 old_de = ext2_find_entry (old_dir, &old_dentry->d_name, &old_page);
 if (!old_de) {
  err = -ENOENT;
  goto out;
 }

 if (S_ISDIR(old_inode->i_mode)) {
  err = -EIO;
  dir_de = ext2_dotdot(old_inode, &dir_page);
  if (!dir_de)
   goto out_old;
 }

 if (new_inode) {
  struct page *new_page;
  struct ext2_dir_entry_2 *new_de;

  err = -ENOTEMPTY;
  if (dir_de && !ext2_empty_dir (new_inode))
   goto out_dir;

  err = -ENOENT;
  new_de = ext2_find_entry (new_dir, &new_dentry->d_name, &new_page);
  if (!new_de)
   goto out_dir;
  ext2_set_link(new_dir, new_de, new_page, old_inode, 1);
  new_inode->i_ctime = current_time(new_inode);
  if (dir_de)
   drop_nlink(new_inode);
  inode_dec_link_count(new_inode);
 } else {
  err = ext2_add_link(new_dentry, old_inode);
  if (err)
   goto out_dir;
  if (dir_de)
   inode_inc_link_count(new_dir);
 }





 old_inode->i_ctime = current_time(old_inode);
 mark_inode_dirty(old_inode);

 ext2_delete_entry (old_de, old_page);

 if (dir_de) {
  if (old_dir != new_dir)
   ext2_set_link(old_inode, dir_de, dir_page, new_dir, 0);
  else {
   kunmap(dir_page);
   put_page(dir_page);
  }
  inode_dec_link_count(old_dir);
 }
 return 0;


out_dir:
 if (dir_de) {
  kunmap(dir_page);
  put_page(dir_page);
 }
out_old:
 kunmap(old_page);
 put_page(old_page);
out:
 return err;
}
