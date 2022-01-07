
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {TYPE_1__* file; } ;
struct TYPE_2__ {int * f_op; } ;


 int EBADF ;
 int EINVAL ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int timerfd_fops ;

__attribute__((used)) static int timerfd_fget(int fd, struct fd *p)
{
 struct fd f = fdget(fd);
 if (!f.file)
  return -EBADF;
 if (f.file->f_op != &timerfd_fops) {
  fdput(f);
  return -EINVAL;
 }
 *p = f;
 return 0;
}
