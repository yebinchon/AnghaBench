
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rcu_nmi_exit_common (int) ;

void rcu_nmi_exit(void)
{
 rcu_nmi_exit_common(0);
}
