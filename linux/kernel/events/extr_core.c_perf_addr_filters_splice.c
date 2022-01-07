
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lock; int list; } ;
struct perf_event {TYPE_1__ addr_filters; scalar_t__ parent; } ;
struct list_head {int dummy; } ;


 int LIST_HEAD (int ) ;
 int free_filters_list (int *) ;
 int has_addr_filter (struct perf_event*) ;
 int list ;
 int list_splice (struct list_head*,int *) ;
 int list_splice_init (int *,int *) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void perf_addr_filters_splice(struct perf_event *event,
         struct list_head *head)
{
 unsigned long flags;
 LIST_HEAD(list);

 if (!has_addr_filter(event))
  return;


 if (event->parent)
  return;

 raw_spin_lock_irqsave(&event->addr_filters.lock, flags);

 list_splice_init(&event->addr_filters.list, &list);
 if (head)
  list_splice(head, &event->addr_filters.list);

 raw_spin_unlock_irqrestore(&event->addr_filters.lock, flags);

 free_filters_list(&list);
}
