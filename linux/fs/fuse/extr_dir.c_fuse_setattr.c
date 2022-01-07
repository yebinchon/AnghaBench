
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; } ;
struct iattr {int ia_valid; int ia_mode; struct file* ia_file; } ;
struct fuse_conn {scalar_t__ posix_acl; int handle_killpriv; } ;
struct file {int dummy; } ;
struct dentry {int dummy; } ;


 int ATTR_FILE ;
 int ATTR_KILL_SGID ;
 int ATTR_KILL_SUID ;
 int ATTR_MODE ;
 int EACCES ;
 int S_ISGID ;
 int S_ISUID ;
 int S_IXGRP ;
 struct inode* d_inode (struct dentry*) ;
 scalar_t__ d_is_dir (struct dentry*) ;
 int forget_all_cached_acls (struct inode*) ;
 int fuse_allow_current_process (struct fuse_conn*) ;
 int fuse_do_getattr (struct inode*,int *,struct file*) ;
 int fuse_do_setattr (struct dentry*,struct iattr*,struct file*) ;
 int fuse_invalidate_entry_cache (struct dentry*) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;

__attribute__((used)) static int fuse_setattr(struct dentry *entry, struct iattr *attr)
{
 struct inode *inode = d_inode(entry);
 struct fuse_conn *fc = get_fuse_conn(inode);
 struct file *file = (attr->ia_valid & ATTR_FILE) ? attr->ia_file : ((void*)0);
 int ret;

 if (!fuse_allow_current_process(get_fuse_conn(inode)))
  return -EACCES;

 if (attr->ia_valid & (ATTR_KILL_SUID | ATTR_KILL_SGID)) {
  attr->ia_valid &= ~(ATTR_KILL_SUID | ATTR_KILL_SGID |
        ATTR_MODE);







  if (!fc->handle_killpriv) {




   ret = fuse_do_getattr(inode, ((void*)0), file);
   if (ret)
    return ret;

   attr->ia_mode = inode->i_mode;
   if (inode->i_mode & S_ISUID) {
    attr->ia_valid |= ATTR_MODE;
    attr->ia_mode &= ~S_ISUID;
   }
   if ((inode->i_mode & (S_ISGID | S_IXGRP)) == (S_ISGID | S_IXGRP)) {
    attr->ia_valid |= ATTR_MODE;
    attr->ia_mode &= ~S_ISGID;
   }
  }
 }
 if (!attr->ia_valid)
  return 0;

 ret = fuse_do_setattr(entry, attr, file);
 if (!ret) {




  if (fc->posix_acl)
   forget_all_cached_acls(inode);


  if (d_is_dir(entry) && (attr->ia_valid & ATTR_MODE))
   fuse_invalidate_entry_cache(entry);
 }
 return ret;
}
