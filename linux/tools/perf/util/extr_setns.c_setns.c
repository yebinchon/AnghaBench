
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __NR_setns ;
 int syscall (int ,int,int) ;

int setns(int fd, int nstype)
{
 return syscall(__NR_setns, fd, nstype);
}
