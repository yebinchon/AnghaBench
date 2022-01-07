
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_export {struct trace_export* next; } ;


 int rcu_assign_pointer (struct trace_export*,struct trace_export*) ;

__attribute__((used)) static inline void
add_trace_export(struct trace_export **list, struct trace_export *export)
{
 rcu_assign_pointer(export->next, *list);






 rcu_assign_pointer(*list, export);
}
