
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ip6_rt_gc_interval; } ;
struct TYPE_4__ {unsigned long ip6_rt_last_gc; int fib6_gc_lock; int ip6_fib_timer; TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;
struct fib6_gc_args {int timeout; scalar_t__ more; } ;


 scalar_t__ HZ ;
 int del_timer (int *) ;
 int fib6_age ;
 int fib6_clean_all (struct net*,int ,struct fib6_gc_args*) ;
 unsigned long jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ round_jiffies (int) ;
 int spin_lock_bh (int *) ;
 int spin_trylock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void fib6_run_gc(unsigned long expires, struct net *net, bool force)
{
 struct fib6_gc_args gc_args;
 unsigned long now;

 if (force) {
  spin_lock_bh(&net->ipv6.fib6_gc_lock);
 } else if (!spin_trylock_bh(&net->ipv6.fib6_gc_lock)) {
  mod_timer(&net->ipv6.ip6_fib_timer, jiffies + HZ);
  return;
 }
 gc_args.timeout = expires ? (int)expires :
     net->ipv6.sysctl.ip6_rt_gc_interval;
 gc_args.more = 0;

 fib6_clean_all(net, fib6_age, &gc_args);
 now = jiffies;
 net->ipv6.ip6_rt_last_gc = now;

 if (gc_args.more)
  mod_timer(&net->ipv6.ip6_fib_timer,
     round_jiffies(now
     + net->ipv6.sysctl.ip6_rt_gc_interval));
 else
  del_timer(&net->ipv6.ip6_fib_timer);
 spin_unlock_bh(&net->ipv6.fib6_gc_lock);
}
