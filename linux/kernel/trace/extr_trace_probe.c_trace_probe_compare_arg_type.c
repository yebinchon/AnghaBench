
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_probe {int nr_args; TYPE_1__* args; } ;
struct TYPE_2__ {scalar_t__ type; scalar_t__ count; int name; } ;


 scalar_t__ strcmp (int ,int ) ;

int trace_probe_compare_arg_type(struct trace_probe *a, struct trace_probe *b)
{
 int i;


 if (a->nr_args < b->nr_args)
  return a->nr_args + 1;
 if (a->nr_args > b->nr_args)
  return b->nr_args + 1;

 for (i = 0; i < a->nr_args; i++) {
  if ((b->nr_args <= i) ||
      ((a->args[i].type != b->args[i].type) ||
       (a->args[i].count != b->args[i].count) ||
       strcmp(a->args[i].name, b->args[i].name)))
   return i + 1;
 }

 return 0;
}
