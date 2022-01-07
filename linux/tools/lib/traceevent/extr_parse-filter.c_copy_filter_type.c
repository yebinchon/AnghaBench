
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tep_filter_type {struct tep_filter_arg* filter; TYPE_1__* event; } ;
struct TYPE_4__ {int value; } ;
struct tep_filter_arg {TYPE_2__ boolean; int type; } ;
struct tep_event_filter {int tep; } ;
struct tep_event {int id; } ;
struct TYPE_3__ {char* system; char* name; } ;


 int TEP_FILTER_ARG_BOOLEAN ;
 struct tep_filter_type* add_filter_type (struct tep_event_filter*,int ) ;
 struct tep_filter_arg* allocate_arg () ;
 char* arg_to_str (struct tep_event_filter*,struct tep_filter_arg*) ;
 int filter_event (struct tep_event_filter*,struct tep_event*,char*,int *) ;
 int free (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 struct tep_event* tep_find_event_by_name (int ,char const*,char const*) ;

__attribute__((used)) static int copy_filter_type(struct tep_event_filter *filter,
       struct tep_event_filter *source,
       struct tep_filter_type *filter_type)
{
 struct tep_filter_arg *arg;
 struct tep_event *event;
 const char *sys;
 const char *name;
 char *str;


 sys = filter_type->event->system;
 name = filter_type->event->name;
 event = tep_find_event_by_name(filter->tep, sys, name);
 if (!event)
  return -1;

 str = arg_to_str(source, filter_type->filter);
 if (!str)
  return -1;

 if (strcmp(str, "TRUE") == 0 || strcmp(str, "FALSE") == 0) {

  arg = allocate_arg();
  if (arg == ((void*)0))
   return -1;

  arg->type = TEP_FILTER_ARG_BOOLEAN;
  if (strcmp(str, "TRUE") == 0)
   arg->boolean.value = 1;
  else
   arg->boolean.value = 0;

  filter_type = add_filter_type(filter, event->id);
  if (filter_type == ((void*)0))
   return -1;

  filter_type->filter = arg;

  free(str);
  return 0;
 }

 filter_event(filter, event, str, ((void*)0));
 free(str);

 return 0;
}
