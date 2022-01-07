
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_seccomp ;
 scalar_t__ errno ;
 int syscall (int ,unsigned int,unsigned int,void*) ;

__attribute__((used)) static int seccomp(unsigned int op, unsigned int flags, void *args)
{
 errno = 0;
 return syscall(__NR_seccomp, op, flags, args);
}
