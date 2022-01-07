
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct nilfs_transaction_info {int dummy; } ;
struct nilfs_dir_entry {int dummy; } ;
struct inode {int i_sb; void* i_ctime; int i_mode; } ;
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
 int inc_nlink (struct inode*) ;
 int kunmap (struct page*) ;
 int nilfs_add_link (struct dentry*,struct inode*) ;
 int nilfs_delete_entry (struct nilfs_dir_entry*,struct page*) ;
 struct nilfs_dir_entry* nilfs_dotdot (struct inode*,struct page**) ;
 int nilfs_empty_dir (struct inode*) ;
 struct nilfs_dir_entry* nilfs_find_entry (struct inode*,int *,struct page**) ;
 int nilfs_mark_inode_dirty (struct inode*) ;
 int nilfs_set_link (struct inode*,struct nilfs_dir_entry*,struct page*,struct inode*) ;
 int nilfs_transaction_abort (int ) ;
 int nilfs_transaction_begin (int ,struct nilfs_transaction_info*,int) ;
 int nilfs_transaction_commit (int ) ;
 int put_page (struct page*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nilfs_rename(struct inode *old_dir, struct dentry *old_dentry,
   struct inode *new_dir, struct dentry *new_dentry,
   unsigned int flags)
{
 struct inode *old_inode = d_inode(old_dentry);
 struct inode *new_inode = d_inode(new_dentry);
 struct page *dir_page = ((void*)0);
 struct nilfs_dir_entry *dir_de = ((void*)0);
 struct page *old_page;
 struct nilfs_dir_entry *old_de;
 struct nilfs_transaction_info ti;
 int err;

 if (flags & ~RENAME_NOREPLACE)
  return -EINVAL;

 err = nilfs_transaction_begin(old_dir->i_sb, &ti, 1);
 if (unlikely(err))
  return err;

 err = -ENOENT;
 old_de = nilfs_find_entry(old_dir, &old_dentry->d_name, &old_page);
 if (!old_de)
  goto out;

 if (S_ISDIR(old_inode->i_mode)) {
  err = -EIO;
  dir_de = nilfs_dotdot(old_inode, &dir_page);
  if (!dir_de)
   goto out_old;
 }

 if (new_inode) {
  struct page *new_page;
  struct nilfs_dir_entry *new_de;

  err = -ENOTEMPTY;
  if (dir_de && !nilfs_empty_dir(new_inode))
   goto out_dir;

  err = -ENOENT;
  new_de = nilfs_find_entry(new_dir, &new_dentry->d_name, &new_page);
  if (!new_de)
   goto out_dir;
  nilfs_set_link(new_dir, new_de, new_page, old_inode);
  nilfs_mark_inode_dirty(new_dir);
  new_inode->i_ctime = current_time(new_inode);
  if (dir_de)
   drop_nlink(new_inode);
  drop_nlink(new_inode);
  nilfs_mark_inode_dirty(new_inode);
 } else {
  err = nilfs_add_link(new_dentry, old_inode);
  if (err)
   goto out_dir;
  if (dir_de) {
   inc_nlink(new_dir);
   nilfs_mark_inode_dirty(new_dir);
  }
 }





 old_inode->i_ctime = current_time(old_inode);

 nilfs_delete_entry(old_de, old_page);

 if (dir_de) {
  nilfs_set_link(old_inode, dir_de, dir_page, new_dir);
  drop_nlink(old_dir);
 }
 nilfs_mark_inode_dirty(old_dir);
 nilfs_mark_inode_dirty(old_inode);

 err = nilfs_transaction_commit(old_dir->i_sb);
 return err;

out_dir:
 if (dir_de) {
  kunmap(dir_page);
  put_page(dir_page);
 }
out_old:
 kunmap(old_page);
 put_page(old_page);
out:
 nilfs_transaction_abort(old_dir->i_sb);
 return err;
}
