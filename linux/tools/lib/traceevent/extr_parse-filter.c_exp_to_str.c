
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; int right; int left; } ;
struct tep_filter_arg {TYPE_1__ exp; } ;
struct tep_event_filter {int dummy; } ;
 char* arg_to_str (struct tep_event_filter*,int ) ;
 int asprintf (char**,char*,char*,char*,char*) ;
 int free (char*) ;

__attribute__((used)) static char *exp_to_str(struct tep_event_filter *filter, struct tep_filter_arg *arg)
{
 char *lstr;
 char *rstr;
 char *op;
 char *str = ((void*)0);

 lstr = arg_to_str(filter, arg->exp.left);
 rstr = arg_to_str(filter, arg->exp.right);
 if (!lstr || !rstr)
  goto out;

 switch (arg->exp.type) {
 case 137:
  op = "+";
  break;
 case 129:
  op = "-";
  break;
 case 132:
  op = "*";
  break;
 case 135:
  op = "/";
  break;
 case 133:
  op = "%";
  break;
 case 130:
  op = ">>";
  break;
 case 134:
  op = "<<";
  break;
 case 136:
  op = "&";
  break;
 case 131:
  op = "|";
  break;
 case 128:
  op = "^";
  break;
 default:
  op = "[ERROR IN EXPRESSION TYPE]";
  break;
 }

 asprintf(&str, "%s %s %s", lstr, op, rstr);
out:
 free(lstr);
 free(rstr);

 return str;
}
