
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tep_handle {struct event_handler* handlers; } ;
struct tep_event {int context; int handler; int name; int system; int id; } ;
struct event_handler {struct event_handler* next; int context; int func; int event_name; int sys_name; int id; } ;


 scalar_t__ event_matches (struct tep_event*,int ,int ,int ) ;
 int free_handler (struct event_handler*) ;
 int pr_stat (char*,int ,int ,int ) ;

__attribute__((used)) static int find_event_handle(struct tep_handle *tep, struct tep_event *event)
{
 struct event_handler *handle, **next;

 for (next = &tep->handlers; *next;
      next = &(*next)->next) {
  handle = *next;
  if (event_matches(event, handle->id,
      handle->sys_name,
      handle->event_name))
   break;
 }

 if (!(*next))
  return 0;

 pr_stat("overriding event (%d) %s:%s with new print handler",
  event->id, event->system, event->name);

 event->handler = handle->func;
 event->context = handle->context;

 *next = handle->next;
 free_handler(handle);

 return 1;
}
