
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rcu_nmi_enter_common (int) ;

void rcu_nmi_enter(void)
{
 rcu_nmi_enter_common(0);
}
