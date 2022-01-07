
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statx {int dummy; } ;
typedef int ssize_t ;


 int __NR_statx ;
 int syscall (int ,int,char const*,unsigned int,unsigned int,struct statx*) ;

__attribute__((used)) static __attribute__((unused))
ssize_t statx(int dfd, const char *filename, unsigned flags,
       unsigned int mask, struct statx *buffer)
{
 return syscall(__NR_statx, dfd, filename, flags, mask, buffer);
}
