
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct inode {int i_mode; } ;
struct fuse_inode {int i_time; int inval_mask; } ;
struct fuse_conn {scalar_t__ default_permissions; } ;


 int EACCES ;
 int MAY_ACCESS ;
 int MAY_CHDIR ;
 int MAY_EXEC ;
 int READ_ONCE (int ) ;
 int STATX_GID ;
 int STATX_MODE ;
 int STATX_UID ;
 scalar_t__ S_ISREG (int) ;
 int S_IXUGO ;
 int fuse_access (struct inode*,int) ;
 int fuse_allow_current_process (struct fuse_conn*) ;
 int fuse_perm_getattr (struct inode*,int) ;
 int generic_permission (struct inode*,int) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int get_jiffies_64 () ;
 scalar_t__ time_before64 (int ,int ) ;

__attribute__((used)) static int fuse_permission(struct inode *inode, int mask)
{
 struct fuse_conn *fc = get_fuse_conn(inode);
 bool refreshed = 0;
 int err = 0;

 if (!fuse_allow_current_process(fc))
  return -EACCES;




 if (fc->default_permissions ||
     ((mask & MAY_EXEC) && S_ISREG(inode->i_mode))) {
  struct fuse_inode *fi = get_fuse_inode(inode);
  u32 perm_mask = STATX_MODE | STATX_UID | STATX_GID;

  if (perm_mask & READ_ONCE(fi->inval_mask) ||
      time_before64(fi->i_time, get_jiffies_64())) {
   refreshed = 1;

   err = fuse_perm_getattr(inode, mask);
   if (err)
    return err;
  }
 }

 if (fc->default_permissions) {
  err = generic_permission(inode, mask);




  if (err == -EACCES && !refreshed) {
   err = fuse_perm_getattr(inode, mask);
   if (!err)
    err = generic_permission(inode, mask);
  }





 } else if (mask & (MAY_ACCESS | MAY_CHDIR)) {
  err = fuse_access(inode, mask);
 } else if ((mask & MAY_EXEC) && S_ISREG(inode->i_mode)) {
  if (!(inode->i_mode & S_IXUGO)) {
   if (refreshed)
    return -EACCES;

   err = fuse_perm_getattr(inode, mask);
   if (!err && !(inode->i_mode & S_IXUGO))
    return -EACCES;
  }
 }
 return err;
}
