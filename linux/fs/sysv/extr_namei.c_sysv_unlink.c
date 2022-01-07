
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_dir_entry {int dummy; } ;
struct page {int dummy; } ;
struct inode {int i_ctime; } ;
struct dentry {int dummy; } ;


 int ENOENT ;
 struct inode* d_inode (struct dentry*) ;
 int inode_dec_link_count (struct inode*) ;
 int sysv_delete_entry (struct sysv_dir_entry*,struct page*) ;
 struct sysv_dir_entry* sysv_find_entry (struct dentry*,struct page**) ;

__attribute__((used)) static int sysv_unlink(struct inode * dir, struct dentry * dentry)
{
 struct inode * inode = d_inode(dentry);
 struct page * page;
 struct sysv_dir_entry * de;
 int err = -ENOENT;

 de = sysv_find_entry(dentry, &page);
 if (!de)
  goto out;

 err = sysv_delete_entry (de, page);
 if (err)
  goto out;

 inode->i_ctime = dir->i_ctime;
 inode_dec_link_count(inode);
out:
 return err;
}
