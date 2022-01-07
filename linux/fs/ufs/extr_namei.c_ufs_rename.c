
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_dir_entry {int dummy; } ;
struct page {int dummy; } ;
struct inode {void* i_ctime; int i_mode; } ;
struct dentry {int d_name; } ;


 int EINVAL ;
 int EIO ;
 int ENOENT ;
 int ENOTEMPTY ;
 unsigned int RENAME_NOREPLACE ;
 scalar_t__ S_ISDIR (int ) ;
 void* current_time (struct inode*) ;
 struct inode* d_inode (struct dentry*) ;
 int drop_nlink (struct inode*) ;
 int inode_dec_link_count (struct inode*) ;
 int inode_inc_link_count (struct inode*) ;
 int kunmap (struct page*) ;
 int mark_inode_dirty (struct inode*) ;
 int put_page (struct page*) ;
 int ufs_add_link (struct dentry*,struct inode*) ;
 int ufs_delete_entry (struct inode*,struct ufs_dir_entry*,struct page*) ;
 struct ufs_dir_entry* ufs_dotdot (struct inode*,struct page**) ;
 int ufs_empty_dir (struct inode*) ;
 struct ufs_dir_entry* ufs_find_entry (struct inode*,int *,struct page**) ;
 int ufs_set_link (struct inode*,struct ufs_dir_entry*,struct page*,struct inode*,int) ;

__attribute__((used)) static int ufs_rename(struct inode *old_dir, struct dentry *old_dentry,
        struct inode *new_dir, struct dentry *new_dentry,
        unsigned int flags)
{
 struct inode *old_inode = d_inode(old_dentry);
 struct inode *new_inode = d_inode(new_dentry);
 struct page *dir_page = ((void*)0);
 struct ufs_dir_entry * dir_de = ((void*)0);
 struct page *old_page;
 struct ufs_dir_entry *old_de;
 int err = -ENOENT;

 if (flags & ~RENAME_NOREPLACE)
  return -EINVAL;

 old_de = ufs_find_entry(old_dir, &old_dentry->d_name, &old_page);
 if (!old_de)
  goto out;

 if (S_ISDIR(old_inode->i_mode)) {
  err = -EIO;
  dir_de = ufs_dotdot(old_inode, &dir_page);
  if (!dir_de)
   goto out_old;
 }

 if (new_inode) {
  struct page *new_page;
  struct ufs_dir_entry *new_de;

  err = -ENOTEMPTY;
  if (dir_de && !ufs_empty_dir(new_inode))
   goto out_dir;

  err = -ENOENT;
  new_de = ufs_find_entry(new_dir, &new_dentry->d_name, &new_page);
  if (!new_de)
   goto out_dir;
  ufs_set_link(new_dir, new_de, new_page, old_inode, 1);
  new_inode->i_ctime = current_time(new_inode);
  if (dir_de)
   drop_nlink(new_inode);
  inode_dec_link_count(new_inode);
 } else {
  err = ufs_add_link(new_dentry, old_inode);
  if (err)
   goto out_dir;
  if (dir_de)
   inode_inc_link_count(new_dir);
 }





 old_inode->i_ctime = current_time(old_inode);

 ufs_delete_entry(old_dir, old_de, old_page);
 mark_inode_dirty(old_inode);

 if (dir_de) {
  if (old_dir != new_dir)
   ufs_set_link(old_inode, dir_de, dir_page, new_dir, 0);
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
