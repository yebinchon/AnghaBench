
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tep_event_handler_func ;
struct tep_handle {struct event_handler* handlers; } ;
struct tep_event {void* context; int * handler; int name; int system; int id; } ;
struct event_handler {struct event_handler* next; } ;


 int free_handler (struct event_handler*) ;
 scalar_t__ handle_matches (struct event_handler*,int,char const*,char const*,int *,void*) ;
 int pr_stat (char*,int ,int ,int ) ;
 struct tep_event* search_event (struct tep_handle*,int,char const*,char const*) ;

int tep_unregister_event_handler(struct tep_handle *tep, int id,
     const char *sys_name, const char *event_name,
     tep_event_handler_func func, void *context)
{
 struct tep_event *event;
 struct event_handler *handle;
 struct event_handler **next;

 event = search_event(tep, id, sys_name, event_name);
 if (event == ((void*)0))
  goto not_found;

 if (event->handler == func && event->context == context) {
  pr_stat("removing override handler for event (%d) %s:%s. Going back to default handler.",
   event->id, event->system, event->name);

  event->handler = ((void*)0);
  event->context = ((void*)0);
  return 0;
 }

not_found:
 for (next = &tep->handlers; *next; next = &(*next)->next) {
  handle = *next;
  if (handle_matches(handle, id, sys_name, event_name,
       func, context))
   break;
 }

 if (!(*next))
  return -1;

 *next = handle->next;
 free_handler(handle);

 return 0;
}
