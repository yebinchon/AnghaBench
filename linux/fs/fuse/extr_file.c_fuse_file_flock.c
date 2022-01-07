
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct fuse_file {int flock; } ;
struct fuse_conn {scalar_t__ no_flock; } ;
struct file_lock {int dummy; } ;
struct file {struct fuse_file* private_data; } ;


 struct inode* file_inode (struct file*) ;
 int fuse_setlk (struct file*,struct file_lock*,int) ;
 struct fuse_conn* get_fuse_conn (struct inode*) ;
 int locks_lock_file_wait (struct file*,struct file_lock*) ;

__attribute__((used)) static int fuse_file_flock(struct file *file, int cmd, struct file_lock *fl)
{
 struct inode *inode = file_inode(file);
 struct fuse_conn *fc = get_fuse_conn(inode);
 int err;

 if (fc->no_flock) {
  err = locks_lock_file_wait(file, fl);
 } else {
  struct fuse_file *ff = file->private_data;


  ff->flock = 1;
  err = fuse_setlk(file, fl, 1);
 }

 return err;
}
