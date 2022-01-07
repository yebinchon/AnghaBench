
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rcu_node {int dummy; } ;
struct TYPE_2__ {struct rcu_node* node; } ;


 TYPE_1__ rcu_state ;

__attribute__((used)) static struct rcu_node *rcu_get_root(void)
{
 return &rcu_state.node[0];
}
