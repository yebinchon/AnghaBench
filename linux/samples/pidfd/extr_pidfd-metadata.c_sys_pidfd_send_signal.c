
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int __NR_pidfd_send_signal ;
 int syscall (int ,int,int,int *,unsigned int) ;

__attribute__((used)) static inline int sys_pidfd_send_signal(int pidfd, int sig, siginfo_t *info,
     unsigned int flags)
{
 return syscall(__NR_pidfd_send_signal, pidfd, sig, info, flags);
}
