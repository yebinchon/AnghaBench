
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid {int dummy; } ;


 int __si_special (int) ;
 int kill_pid_info (int,int ,struct pid*) ;

int kill_pid(struct pid *pid, int sig, int priv)
{
 return kill_pid_info(sig, __si_special(priv), pid);
}
