
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_membarrier ;
 int syscall (int ,int,int) ;

__attribute__((used)) static int sys_membarrier(int cmd, int flags)
{
 return syscall(__NR_membarrier, cmd, flags);
}
