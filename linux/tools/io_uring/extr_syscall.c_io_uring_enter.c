
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int _NSIG ;
 int __NR_io_uring_enter ;
 int syscall (int ,int,unsigned int,unsigned int,unsigned int,int *,int) ;

int io_uring_enter(int fd, unsigned int to_submit, unsigned int min_complete,
     unsigned int flags, sigset_t *sig)
{
 return syscall(__NR_io_uring_enter, fd, to_submit, min_complete,
   flags, sig, _NSIG / 8);
}
