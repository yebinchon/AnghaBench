
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_set {int gc; } ;
struct ip_set {int timeout; struct list_set* data; } ;


 int HZ ;
 int IPSET_GC_PERIOD (int ) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int timer_setup (int *,void (*) (struct timer_list*),int ) ;

__attribute__((used)) static void
list_set_gc_init(struct ip_set *set, void (*gc)(struct timer_list *t))
{
 struct list_set *map = set->data;

 timer_setup(&map->gc, gc, 0);
 mod_timer(&map->gc, jiffies + IPSET_GC_PERIOD(set->timeout) * HZ);
}
