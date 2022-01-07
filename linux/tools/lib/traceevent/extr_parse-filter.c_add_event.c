
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_event {int dummy; } ;
struct event_list {struct tep_event* event; struct event_list* next; } ;


 struct event_list* malloc (int) ;

__attribute__((used)) static int add_event(struct event_list **events,
       struct tep_event *event)
{
 struct event_list *list;

 list = malloc(sizeof(*list));
 if (list == ((void*)0))
  return -1;

 list->next = *events;
 *events = list;
 list->event = event;
 return 0;
}
