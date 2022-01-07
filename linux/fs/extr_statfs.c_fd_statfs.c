
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kstatfs {int dummy; } ;
struct fd {TYPE_1__* file; } ;
struct TYPE_2__ {int f_path; } ;


 int EBADF ;
 struct fd fdget_raw (int) ;
 int fdput (struct fd) ;
 int vfs_statfs (int *,struct kstatfs*) ;

int fd_statfs(int fd, struct kstatfs *st)
{
 struct fd f = fdget_raw(fd);
 int error = -EBADF;
 if (f.file) {
  error = vfs_statfs(&f.file->f_path, st);
  fdput(f);
 }
 return error;
}
