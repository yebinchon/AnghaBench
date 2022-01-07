
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_conn {scalar_t__ no_lock; } ;
struct file_lock {int dummy; } ;
struct file {int dummy; } ;


 int F_CANCELLK ;
 int F_GETLK ;
 struct inode* file_inode (struct file*) ;
 int fuse_getlk (struct file*,struct file_lock*) ;
 int fuse_setlk (struct file*,struct file_lock*,int ) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int posix_lock_file (struct file*,struct file_lock*,int *) ;
 int posix_test_lock (struct file*,struct file_lock*) ;

__attribute__((used)) static int fuse_file_lock(struct file *file, int cmd, struct file_lock *fl)
{
 struct inode *inode = file_inode(file);
 struct fuse_conn *fc = get_fuse_conn(inode);
 int err;

 if (cmd == F_CANCELLK) {
  err = 0;
 } else if (cmd == F_GETLK) {
  if (fc->no_lock) {
   posix_test_lock(file, fl);
   err = 0;
  } else
   err = fuse_getlk(file, fl);
 } else {
  if (fc->no_lock)
   err = posix_lock_file(file, fl, ((void*)0));
  else
   err = fuse_setlk(file, fl, 0);
 }
 return err;
}
