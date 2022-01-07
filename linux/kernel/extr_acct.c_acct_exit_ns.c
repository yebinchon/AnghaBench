
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pid_namespace {int bacct; } ;


 int pin_kill (int ) ;
 int rcu_read_lock () ;

void acct_exit_ns(struct pid_namespace *ns)
{
 rcu_read_lock();
 pin_kill(ns->bacct);
}
