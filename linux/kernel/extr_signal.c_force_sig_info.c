
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kernel_siginfo {int dummy; } ;


 int current ;
 int force_sig_info_to_task (struct kernel_siginfo*,int ) ;

int force_sig_info(struct kernel_siginfo *info)
{
 return force_sig_info_to_task(info, current);
}
