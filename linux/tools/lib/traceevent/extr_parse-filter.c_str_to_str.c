
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; int val; TYPE_1__* field; } ;
struct tep_filter_arg {TYPE_2__ str; } ;
struct tep_event_filter {int dummy; } ;
struct TYPE_3__ {int name; } ;






 int asprintf (char**,char*,int ,char*,int ) ;

__attribute__((used)) static char *str_to_str(struct tep_event_filter *filter, struct tep_filter_arg *arg)
{
 char *str = ((void*)0);
 char *op = ((void*)0);

 switch (arg->str.type) {
 case 131:
  op = "==";

 case 130:
  if (!op)
   op = "!=";

 case 128:
  if (!op)
   op = "=~";

 case 129:
  if (!op)
   op = "!~";

  asprintf(&str, "%s %s \"%s\"",
    arg->str.field->name, op, arg->str.val);
  break;

 default:

  break;
 }
 return str;
}
