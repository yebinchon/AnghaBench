
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fib6_walker_lock; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib6_walker {int lh; } ;


 int list_del (int *) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void fib6_walker_unlink(struct net *net, struct fib6_walker *w)
{
 write_lock_bh(&net->ipv6.fib6_walker_lock);
 list_del(&w->lh);
 write_unlock_bh(&net->ipv6.fib6_walker_lock);
}
