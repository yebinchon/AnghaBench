
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_base {int dummy; } ;
struct hlist_head {int dummy; } ;


 int __collect_expired_timers (struct timer_base*,struct hlist_head*) ;

__attribute__((used)) static inline int collect_expired_timers(struct timer_base *base,
      struct hlist_head *heads)
{
 return __collect_expired_timers(base, heads);
}
