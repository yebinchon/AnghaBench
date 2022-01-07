
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kstat {int dummy; } ;
struct fd {TYPE_1__* file; } ;
struct TYPE_2__ {int f_path; } ;


 int EBADF ;
 int EINVAL ;
 unsigned int KSTAT_QUERY_FLAGS ;
 struct fd fdget_raw (unsigned int) ;
 int fdput (struct fd) ;
 int vfs_getattr (int *,struct kstat*,int ,unsigned int) ;

int vfs_statx_fd(unsigned int fd, struct kstat *stat,
   u32 request_mask, unsigned int query_flags)
{
 struct fd f;
 int error = -EBADF;

 if (query_flags & ~KSTAT_QUERY_FLAGS)
  return -EINVAL;

 f = fdget_raw(fd);
 if (f.file) {
  error = vfs_getattr(&f.file->f_path, stat,
        request_mask, query_flags);
  fdput(f);
 }
 return error;
}
