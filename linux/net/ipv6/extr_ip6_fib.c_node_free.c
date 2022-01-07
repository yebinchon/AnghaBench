
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rt6_stats; } ;
struct net {TYPE_2__ ipv6; } ;
struct fib6_node {int rcu; } ;
struct TYPE_3__ {int fib_nodes; } ;


 int call_rcu (int *,int ) ;
 int node_free_rcu ;

__attribute__((used)) static void node_free(struct net *net, struct fib6_node *fn)
{
 call_rcu(&fn->rcu, node_free_rcu);
 net->ipv6.rt6_stats->fib_nodes--;
}
