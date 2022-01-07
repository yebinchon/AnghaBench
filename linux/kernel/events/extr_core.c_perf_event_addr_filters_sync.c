
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ addr_filters_gen; } ;
struct perf_event {scalar_t__ addr_filters_gen; TYPE_2__ hw; TYPE_1__* pmu; } ;
struct perf_addr_filters_head {int lock; } ;
struct TYPE_3__ {int (* addr_filters_sync ) (struct perf_event*) ;} ;


 int has_addr_filter (struct perf_event*) ;
 struct perf_addr_filters_head* perf_event_addr_filters (struct perf_event*) ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;
 int stub1 (struct perf_event*) ;

void perf_event_addr_filters_sync(struct perf_event *event)
{
 struct perf_addr_filters_head *ifh = perf_event_addr_filters(event);

 if (!has_addr_filter(event))
  return;

 raw_spin_lock(&ifh->lock);
 if (event->addr_filters_gen != event->hw.addr_filters_gen) {
  event->pmu->addr_filters_sync(event);
  event->hw.addr_filters_gen = event->addr_filters_gen;
 }
 raw_spin_unlock(&ifh->lock);
}
