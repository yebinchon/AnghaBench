
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_groups {int tree; } ;
struct perf_event {int group_node; } ;


 scalar_t__ RB_EMPTY_NODE (int *) ;
 scalar_t__ RB_EMPTY_ROOT (int *) ;
 int WARN_ON_ONCE (int) ;
 int init_event_group (struct perf_event*) ;
 int rb_erase (int *,int *) ;

__attribute__((used)) static void
perf_event_groups_delete(struct perf_event_groups *groups,
    struct perf_event *event)
{
 WARN_ON_ONCE(RB_EMPTY_NODE(&event->group_node) ||
       RB_EMPTY_ROOT(&groups->tree));

 rb_erase(&event->group_node, &groups->tree);
 init_event_group(event);
}
