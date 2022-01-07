
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat64 {int dummy; } ;
struct hostfs_stat {int dummy; } ;


 int errno ;
 scalar_t__ fstat64 (int,struct stat64*) ;
 scalar_t__ lstat64 (char const*,struct stat64*) ;
 int stat64_to_hostfs (struct stat64*,struct hostfs_stat*) ;

int stat_file(const char *path, struct hostfs_stat *p, int fd)
{
 struct stat64 buf;

 if (fd >= 0) {
  if (fstat64(fd, &buf) < 0)
   return -errno;
 } else if (lstat64(path, &buf) < 0) {
  return -errno;
 }
 stat64_to_hostfs(&buf, p);
 return 0;
}
