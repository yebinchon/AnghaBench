
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_export {struct trace_export* next; } ;


 int rcu_assign_pointer (struct trace_export*,struct trace_export*) ;

__attribute__((used)) static inline int
rm_trace_export(struct trace_export **list, struct trace_export *export)
{
 struct trace_export **p;

 for (p = list; *p != ((void*)0); p = &(*p)->next)
  if (*p == export)
   break;

 if (*p != export)
  return -1;

 rcu_assign_pointer(*p, (*p)->next);

 return 0;
}
