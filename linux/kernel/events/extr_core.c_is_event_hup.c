
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {scalar_t__ state; int child_mutex; int child_list; } ;


 scalar_t__ PERF_EVENT_STATE_EXIT ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static bool is_event_hup(struct perf_event *event)
{
 bool no_children;

 if (event->state > PERF_EVENT_STATE_EXIT)
  return 0;

 mutex_lock(&event->child_mutex);
 no_children = list_empty(&event->child_list);
 mutex_unlock(&event->child_mutex);
 return no_children;
}
