
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct netlink_callback {int* args; void* done; TYPE_1__* skb; } ;
struct net {int dummy; } ;
struct fib6_walker {int dummy; } ;
struct TYPE_2__ {int sk; } ;


 int fib6_walker_unlink (struct net*,struct fib6_walker*) ;
 int kfree (struct fib6_walker*) ;
 struct net* sock_net (int ) ;

__attribute__((used)) static void fib6_dump_end(struct netlink_callback *cb)
{
 struct net *net = sock_net(cb->skb->sk);
 struct fib6_walker *w = (void *)cb->args[2];

 if (w) {
  if (cb->args[4]) {
   cb->args[4] = 0;
   fib6_walker_unlink(net, w);
  }
  cb->args[2] = 0;
  kfree(w);
 }
 cb->done = (void *)cb->args[3];
 cb->args[1] = 3;
}
