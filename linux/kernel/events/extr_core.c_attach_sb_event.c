
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmu_event_list {int lock; int list; } ;
struct perf_event {int sb_list; int cpu; } ;


 int list_add_rcu (int *,int *) ;
 struct pmu_event_list* per_cpu_ptr (int *,int ) ;
 int pmu_sb_events ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static void attach_sb_event(struct perf_event *event)
{
 struct pmu_event_list *pel = per_cpu_ptr(&pmu_sb_events, event->cpu);

 raw_spin_lock(&pel->lock);
 list_add_rcu(&event->sb_list, &pel->list);
 raw_spin_unlock(&pel->lock);
}
