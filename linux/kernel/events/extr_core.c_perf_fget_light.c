
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {TYPE_1__* file; } ;
struct TYPE_2__ {int * f_op; } ;


 int EBADF ;
 struct fd fdget (int) ;
 int fdput (struct fd) ;
 int perf_fops ;

__attribute__((used)) static inline int perf_fget_light(int fd, struct fd *p)
{
 struct fd f = fdget(fd);
 if (!f.file)
  return -EBADF;

 if (f.file->f_op != &perf_fops) {
  fdput(f);
  return -EBADF;
 }
 *p = f;
 return 0;
}
