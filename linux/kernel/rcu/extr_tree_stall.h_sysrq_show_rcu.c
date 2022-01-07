
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int show_rcu_gp_kthreads () ;

__attribute__((used)) static void sysrq_show_rcu(int key)
{
 show_rcu_gp_kthreads();
}
