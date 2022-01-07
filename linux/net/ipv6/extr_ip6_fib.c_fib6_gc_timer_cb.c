
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int ip6_fib_timer; } ;


 struct net* arg ;
 int fib6_run_gc (int ,struct net*,int) ;
 struct net* from_timer (int ,struct timer_list*,int ) ;
 TYPE_1__ ipv6 ;

__attribute__((used)) static void fib6_gc_timer_cb(struct timer_list *t)
{
 struct net *arg = from_timer(arg, t, ipv6.ip6_fib_timer);

 fib6_run_gc(0, arg, 1);
}
