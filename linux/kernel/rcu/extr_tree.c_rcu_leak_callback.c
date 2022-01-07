
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int dummy; } ;



__attribute__((used)) static void rcu_leak_callback(struct rcu_head *rhp)
{
}
