
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_kcmp ;
 long syscall (int ,int,int,int,unsigned long,unsigned long) ;

__attribute__((used)) static long sys_kcmp(int pid1, int pid2, int type, unsigned long fd1, unsigned long fd2)
{
 return syscall(__NR_kcmp, pid1, pid2, type, fd1, fd2);
}
