
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tep_func_resolver_t ;
struct machine {int dummy; } ;
struct TYPE_2__ {int pevent; } ;


 int tep_set_function_resolver (int ,int *,struct machine*) ;
 TYPE_1__ tevent ;
 int tevent_initialized ;
 scalar_t__ trace_event__init2 () ;

int trace_event__register_resolver(struct machine *machine,
       tep_func_resolver_t *func)
{
 if (!tevent_initialized && trace_event__init2())
  return -1;

 return tep_set_function_resolver(tevent.pevent, func, machine);
}
