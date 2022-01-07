
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int right; int left; } ;
struct tep_filter_arg {TYPE_1__ num; } ;
struct tep_event_filter {int dummy; } ;
 char* arg_to_str (struct tep_event_filter*,int ) ;
 int asprintf (char**,char*,char*,char*,char*) ;
 int free (char*) ;

__attribute__((used)) static char *num_to_str(struct tep_event_filter *filter, struct tep_filter_arg *arg)
{
 char *lstr;
 char *rstr;
 char *str = ((void*)0);
 char *op = ((void*)0);

 lstr = arg_to_str(filter, arg->num.left);
 rstr = arg_to_str(filter, arg->num.right);
 if (!lstr || !rstr)
  goto out;

 switch (arg->num.type) {
 case 133:
  op = "==";

 case 128:
  if (!op)
   op = "!=";

 case 131:
  if (!op)
   op = ">";

 case 129:
  if (!op)
   op = "<";

 case 132:
  if (!op)
   op = ">=";

 case 130:
  if (!op)
   op = "<=";

  asprintf(&str, "%s %s %s", lstr, op, rstr);
  break;

 default:

  break;
 }

out:
 free(lstr);
 free(rstr);
 return str;
}
