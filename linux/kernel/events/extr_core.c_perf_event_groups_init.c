
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_event_groups {scalar_t__ index; int tree; } ;


 int RB_ROOT ;

__attribute__((used)) static void perf_event_groups_init(struct perf_event_groups *groups)
{
 groups->tree = RB_ROOT;
 groups->index = 0;
}
