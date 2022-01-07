
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigpending {int dummy; } ;
typedef int sigset_t ;
typedef int kernel_siginfo_t ;


 int collect_signal (int,struct sigpending*,int *,int*) ;
 int next_signal (struct sigpending*,int *) ;

__attribute__((used)) static int __dequeue_signal(struct sigpending *pending, sigset_t *mask,
   kernel_siginfo_t *info, bool *resched_timer)
{
 int sig = next_signal(pending, mask);

 if (sig)
  collect_signal(sig, pending, info, resched_timer);
 return sig;
}
