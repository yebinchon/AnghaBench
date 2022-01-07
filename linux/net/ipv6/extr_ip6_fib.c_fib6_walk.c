
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int dummy; } ;
struct fib6_walker {int root; int node; int state; } ;


 int FWS_INIT ;
 int fib6_walk_continue (struct fib6_walker*) ;
 int fib6_walker_link (struct net*,struct fib6_walker*) ;
 int fib6_walker_unlink (struct net*,struct fib6_walker*) ;

__attribute__((used)) static int fib6_walk(struct net *net, struct fib6_walker *w)
{
 int res;

 w->state = FWS_INIT;
 w->node = w->root;

 fib6_walker_link(net, w);
 res = fib6_walk_continue(w);
 if (res <= 0)
  fib6_walker_unlink(net, w);
 return res;
}
