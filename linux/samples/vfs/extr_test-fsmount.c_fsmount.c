
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_fsmount ;
 int syscall (int ,int,unsigned int,unsigned int) ;

__attribute__((used)) static inline int fsmount(int fsfd, unsigned int flags, unsigned int ms_flags)
{
 return syscall(__NR_fsmount, fsfd, flags, ms_flags);
}
