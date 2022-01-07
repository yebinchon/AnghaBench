
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tep_filter_type {struct tep_filter_arg* filter; } ;
struct TYPE_2__ {int value; } ;
struct tep_filter_arg {TYPE_1__ boolean; int type; } ;
struct tep_event_filter {int dummy; } ;
struct tep_event {int id; } ;
typedef enum tep_errno { ____Placeholder_tep_errno } tep_errno ;


 int TEP_ERRNO__MEM_ALLOC_FAILED ;
 int TEP_FILTER_ARG_BOOLEAN ;
 int TEP_FILTER_TRUE ;
 struct tep_filter_type* add_filter_type (struct tep_event_filter*,int ) ;
 struct tep_filter_arg* allocate_arg () ;
 int free_arg (struct tep_filter_arg*) ;
 int process_event (struct tep_event*,char const*,struct tep_filter_arg**,char*) ;

__attribute__((used)) static enum tep_errno
filter_event(struct tep_event_filter *filter, struct tep_event *event,
      const char *filter_str, char *error_str)
{
 struct tep_filter_type *filter_type;
 struct tep_filter_arg *arg;
 enum tep_errno ret;

 if (filter_str) {
  ret = process_event(event, filter_str, &arg, error_str);
  if (ret < 0)
   return ret;

 } else {

  arg = allocate_arg();
  if (arg == ((void*)0))
   return TEP_ERRNO__MEM_ALLOC_FAILED;

  arg->type = TEP_FILTER_ARG_BOOLEAN;
  arg->boolean.value = TEP_FILTER_TRUE;
 }

 filter_type = add_filter_type(filter, event->id);
 if (filter_type == ((void*)0))
  return TEP_ERRNO__MEM_ALLOC_FAILED;

 if (filter_type->filter)
  free_arg(filter_type->filter);
 filter_type->filter = arg;

 return 0;
}
