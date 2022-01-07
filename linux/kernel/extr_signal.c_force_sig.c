
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_siginfo {int si_signo; scalar_t__ si_uid; scalar_t__ si_pid; int si_code; scalar_t__ si_errno; } ;


 int SI_KERNEL ;
 int clear_siginfo (struct kernel_siginfo*) ;
 int force_sig_info (struct kernel_siginfo*) ;

void force_sig(int sig)
{
 struct kernel_siginfo info;

 clear_siginfo(&info);
 info.si_signo = sig;
 info.si_errno = 0;
 info.si_code = SI_KERNEL;
 info.si_pid = 0;
 info.si_uid = 0;
 force_sig_info(&info);
}
