
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flock64 {int l_len; int l_start; int l_whence; int l_type; } ;
struct flock {int l_len; int l_start; int l_whence; int l_type; } ;
struct file_lock {int dummy; } ;
struct file {int dummy; } ;


 int flock64_to_posix_lock (struct file*,struct file_lock*,struct flock64*) ;

__attribute__((used)) static int flock_to_posix_lock(struct file *filp, struct file_lock *fl,
          struct flock *l)
{
 struct flock64 ll = {
  .l_type = l->l_type,
  .l_whence = l->l_whence,
  .l_start = l->l_start,
  .l_len = l->l_len,
 };

 return flock64_to_posix_lock(filp, fl, &ll);
}
