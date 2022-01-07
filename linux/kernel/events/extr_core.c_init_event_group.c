
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event {scalar_t__ group_index; int group_node; } ;


 int RB_CLEAR_NODE (int *) ;

__attribute__((used)) static void init_event_group(struct perf_event *event)
{
 RB_CLEAR_NODE(&event->group_node);
 event->group_index = 0;
}
