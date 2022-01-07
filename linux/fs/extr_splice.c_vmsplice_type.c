
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fd {TYPE_1__* file; } ;
struct TYPE_2__ {int f_mode; } ;


 int EBADF ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int READ ;
 int WRITE ;
 int fdput (struct fd) ;

__attribute__((used)) static int vmsplice_type(struct fd f, int *type)
{
 if (!f.file)
  return -EBADF;
 if (f.file->f_mode & FMODE_WRITE) {
  *type = WRITE;
 } else if (f.file->f_mode & FMODE_READ) {
  *type = READ;
 } else {
  fdput(f);
  return -EBADF;
 }
 return 0;
}
