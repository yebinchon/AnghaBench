
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timer_list {int dummy; } ;
struct TYPE_2__ {scalar_t__ expires; } ;
struct list_set {TYPE_1__ gc; struct ip_set* set; } ;
struct ip_set {int timeout; int lock; } ;


 int HZ ;
 int IPSET_GC_PERIOD (int ) ;
 int add_timer (TYPE_1__*) ;
 struct list_set* from_timer (int ,struct timer_list*,int ) ;
 int gc ;
 scalar_t__ jiffies ;
 struct list_set* map ;
 int set_cleanup_entries (struct ip_set*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void
list_set_gc(struct timer_list *t)
{
 struct list_set *map = from_timer(map, t, gc);
 struct ip_set *set = map->set;

 spin_lock_bh(&set->lock);
 set_cleanup_entries(set);
 spin_unlock_bh(&set->lock);

 map->gc.expires = jiffies + IPSET_GC_PERIOD(set->timeout) * HZ;
 add_timer(&map->gc);
}
