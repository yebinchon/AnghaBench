
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rt6_stats; } ;
struct net {TYPE_2__ ipv6; } ;
struct fib6_node {int dummy; } ;
struct TYPE_3__ {int fib_nodes; } ;


 int GFP_ATOMIC ;
 int fib6_node_kmem ;
 struct fib6_node* kmem_cache_zalloc (int ,int ) ;

__attribute__((used)) static struct fib6_node *node_alloc(struct net *net)
{
 struct fib6_node *fn;

 fn = kmem_cache_zalloc(fib6_node_kmem, GFP_ATOMIC);
 if (fn)
  net->ipv6.rt6_stats->fib_nodes++;

 return fn;
}
