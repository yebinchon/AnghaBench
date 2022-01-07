
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;


 int parse_events__modifier_event (struct list_head*,char*,int) ;

int parse_events__modifier_group(struct list_head *list,
     char *event_mod)
{
 return parse_events__modifier_event(list, event_mod, 1);
}
