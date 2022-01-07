
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct tep_filter_arg {TYPE_1__ exp; int type; } ;
typedef enum tep_filter_exp_type { ____Placeholder_tep_filter_exp_type } tep_filter_exp_type ;


 int TEP_FILTER_ARG_EXP ;
 struct tep_filter_arg* allocate_arg () ;

__attribute__((used)) static struct tep_filter_arg *
create_arg_exp(enum tep_filter_exp_type etype)
{
 struct tep_filter_arg *arg;

 arg = allocate_arg();
 if (!arg)
  return ((void*)0);

 arg->type = TEP_FILTER_ARG_EXP;
 arg->exp.type = etype;

 return arg;
}
