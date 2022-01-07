
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; } ;
struct tep_filter_arg {int type; TYPE_1__ boolean; } ;
struct tep_event_filter {int dummy; } ;
 int asprintf (char**,char*) ;
 char* exp_to_str (struct tep_event_filter*,struct tep_filter_arg*) ;
 char* field_to_str (struct tep_event_filter*,struct tep_filter_arg*) ;
 char* num_to_str (struct tep_event_filter*,struct tep_filter_arg*) ;
 char* op_to_str (struct tep_event_filter*,struct tep_filter_arg*) ;
 char* str_to_str (struct tep_event_filter*,struct tep_filter_arg*) ;
 char* val_to_str (struct tep_event_filter*,struct tep_filter_arg*) ;

__attribute__((used)) static char *arg_to_str(struct tep_event_filter *filter, struct tep_filter_arg *arg)
{
 char *str = ((void*)0);

 switch (arg->type) {
 case 134:
  asprintf(&str, arg->boolean.value ? "TRUE" : "FALSE");
  return str;

 case 130:
  return op_to_str(filter, arg);

 case 131:
  return num_to_str(filter, arg);

 case 129:
  return str_to_str(filter, arg);

 case 128:
  return val_to_str(filter, arg);

 case 132:
  return field_to_str(filter, arg);

 case 133:
  return exp_to_str(filter, arg);

 default:

  return ((void*)0);
 }

}
