
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kstat {int ino; int mode; } ;
struct inode {int dummy; } ;
struct fuse_inode {int orig_ino; int orig_i_mode; int i_time; int inval_mask; } ;
struct file {int dummy; } ;


 unsigned int AT_STATX_DONT_SYNC ;
 unsigned int AT_STATX_FORCE_SYNC ;
 int READ_ONCE (int ) ;
 int forget_all_cached_acls (struct inode*) ;
 int fuse_do_getattr (struct inode*,struct kstat*,struct file*) ;
 int generic_fillattr (struct inode*,struct kstat*) ;
 struct fuse_inode* get_fuse_inode (struct inode*) ;
 int get_jiffies_64 () ;
 int time_before64 (int ,int ) ;

__attribute__((used)) static int fuse_update_get_attr(struct inode *inode, struct file *file,
    struct kstat *stat, u32 request_mask,
    unsigned int flags)
{
 struct fuse_inode *fi = get_fuse_inode(inode);
 int err = 0;
 bool sync;

 if (flags & AT_STATX_FORCE_SYNC)
  sync = 1;
 else if (flags & AT_STATX_DONT_SYNC)
  sync = 0;
 else if (request_mask & READ_ONCE(fi->inval_mask))
  sync = 1;
 else
  sync = time_before64(fi->i_time, get_jiffies_64());

 if (sync) {
  forget_all_cached_acls(inode);
  err = fuse_do_getattr(inode, stat, file);
 } else if (stat) {
  generic_fillattr(inode, stat);
  stat->mode = fi->orig_i_mode;
  stat->ino = fi->orig_ino;
 }

 return err;
}
