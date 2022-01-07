
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;
struct file {int dummy; } ;
struct fasync_struct {unsigned int fa_fd; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct file_lock*) ;
 int PTR_ERR (struct file_lock*) ;
 struct fasync_struct* fasync_alloc () ;
 int fasync_free (struct fasync_struct*) ;
 struct file_lock* lease_alloc (struct file*,long) ;
 int locks_free_lock (struct file_lock*) ;
 int vfs_setlease (struct file*,long,struct file_lock**,void**) ;

__attribute__((used)) static int do_fcntl_add_lease(unsigned int fd, struct file *filp, long arg)
{
 struct file_lock *fl;
 struct fasync_struct *new;
 int error;

 fl = lease_alloc(filp, arg);
 if (IS_ERR(fl))
  return PTR_ERR(fl);

 new = fasync_alloc();
 if (!new) {
  locks_free_lock(fl);
  return -ENOMEM;
 }
 new->fa_fd = fd;

 error = vfs_setlease(filp, arg, &fl, (void **)&new);
 if (fl)
  locks_free_lock(fl);
 if (new)
  fasync_free(new);
 return error;
}
