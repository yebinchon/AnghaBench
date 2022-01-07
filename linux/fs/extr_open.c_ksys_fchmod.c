
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int umode_t ;
struct fd {TYPE_1__* file; } ;
struct TYPE_2__ {int f_path; } ;


 int EBADF ;
 int audit_file (TYPE_1__*) ;
 int chmod_common (int *,int ) ;
 struct fd fdget (unsigned int) ;
 int fdput (struct fd) ;

int ksys_fchmod(unsigned int fd, umode_t mode)
{
 struct fd f = fdget(fd);
 int err = -EBADF;

 if (f.file) {
  audit_file(f.file);
  err = chmod_common(&f.file->f_path, mode);
  fdput(f);
 }
 return err;
}
