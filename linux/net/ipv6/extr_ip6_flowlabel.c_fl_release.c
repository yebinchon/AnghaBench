
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct ipv6_txoptions {int dummy; } ;
struct ip6_flowlabel {unsigned long lastuse; unsigned long linger; unsigned long expires; scalar_t__ share; struct ipv6_txoptions* opt; int users; } ;
struct TYPE_4__ {unsigned long expires; } ;


 scalar_t__ IPV6_FL_S_EXCL ;
 scalar_t__ atomic_dec_and_test (int *) ;
 TYPE_1__ ip6_fl_gc_timer ;
 int ip6_fl_lock ;
 unsigned long jiffies ;
 int kfree (struct ipv6_txoptions*) ;
 int mod_timer (TYPE_1__*,unsigned long) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int timer_pending (TYPE_1__*) ;

__attribute__((used)) static void fl_release(struct ip6_flowlabel *fl)
{
 spin_lock_bh(&ip6_fl_lock);

 fl->lastuse = jiffies;
 if (atomic_dec_and_test(&fl->users)) {
  unsigned long ttd = fl->lastuse + fl->linger;
  if (time_after(ttd, fl->expires))
   fl->expires = ttd;
  ttd = fl->expires;
  if (fl->opt && fl->share == IPV6_FL_S_EXCL) {
   struct ipv6_txoptions *opt = fl->opt;
   fl->opt = ((void*)0);
   kfree(opt);
  }
  if (!timer_pending(&ip6_fl_gc_timer) ||
      time_after(ip6_fl_gc_timer.expires, ttd))
   mod_timer(&ip6_fl_gc_timer, ttd);
 }
 spin_unlock_bh(&ip6_fl_lock);
}
