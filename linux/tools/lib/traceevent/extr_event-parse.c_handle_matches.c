
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tep_event_handler_func ;
struct event_handler {int id; scalar_t__ func; void* context; int sys_name; int event_name; } ;


 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static int handle_matches(struct event_handler *handler, int id,
     const char *sys_name, const char *event_name,
     tep_event_handler_func func, void *context)
{
 if (id >= 0 && id != handler->id)
  return 0;

 if (event_name && (strcmp(event_name, handler->event_name) != 0))
  return 0;

 if (sys_name && (strcmp(sys_name, handler->sys_name) != 0))
  return 0;

 if (func != handler->func || context != handler->context)
  return 0;

 return 1;
}
