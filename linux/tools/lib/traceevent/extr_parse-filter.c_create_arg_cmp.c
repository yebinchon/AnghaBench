
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct tep_filter_arg {TYPE_1__ num; int type; } ;
typedef enum tep_filter_cmp_type { ____Placeholder_tep_filter_cmp_type } tep_filter_cmp_type ;


 int TEP_FILTER_ARG_NUM ;
 struct tep_filter_arg* allocate_arg () ;

__attribute__((used)) static struct tep_filter_arg *
create_arg_cmp(enum tep_filter_cmp_type ctype)
{
 struct tep_filter_arg *arg;

 arg = allocate_arg();
 if (!arg)
  return ((void*)0);


 arg->type = TEP_FILTER_ARG_NUM;
 arg->num.type = ctype;

 return arg;
}
