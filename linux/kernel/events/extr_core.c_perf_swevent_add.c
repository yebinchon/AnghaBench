
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swevent_htable {int dummy; } ;
struct hw_perf_event {int state; int sample_period; int last_period; } ;
struct perf_event {int hlist_entry; struct hw_perf_event hw; } ;
struct hlist_head {int dummy; } ;


 int EINVAL ;
 int PERF_EF_START ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct hlist_head* find_swevent_head (struct swevent_htable*,struct perf_event*) ;
 int hlist_add_head_rcu (int *,struct hlist_head*) ;
 scalar_t__ is_sampling_event (struct perf_event*) ;
 int perf_event_update_userpage (struct perf_event*) ;
 int perf_swevent_set_period (struct perf_event*) ;
 int swevent_htable ;
 struct swevent_htable* this_cpu_ptr (int *) ;

__attribute__((used)) static int perf_swevent_add(struct perf_event *event, int flags)
{
 struct swevent_htable *swhash = this_cpu_ptr(&swevent_htable);
 struct hw_perf_event *hwc = &event->hw;
 struct hlist_head *head;

 if (is_sampling_event(event)) {
  hwc->last_period = hwc->sample_period;
  perf_swevent_set_period(event);
 }

 hwc->state = !(flags & PERF_EF_START);

 head = find_swevent_head(swhash, event);
 if (WARN_ON_ONCE(!head))
  return -EINVAL;

 hlist_add_head_rcu(&event->hlist_entry, head);
 perf_event_update_userpage(event);

 return 0;
}
