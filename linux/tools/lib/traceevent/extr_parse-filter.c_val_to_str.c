
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; } ;
struct tep_filter_arg {TYPE_1__ value; } ;
struct tep_event_filter {int dummy; } ;


 int asprintf (char**,char*,int ) ;

__attribute__((used)) static char *val_to_str(struct tep_event_filter *filter, struct tep_filter_arg *arg)
{
 char *str = ((void*)0);

 asprintf(&str, "%lld", arg->value.val);

 return str;
}
