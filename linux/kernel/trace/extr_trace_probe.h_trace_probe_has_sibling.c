
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_probe {int dummy; } ;
struct list_head {int dummy; } ;


 int list_empty (struct list_head*) ;
 int list_is_singular (struct list_head*) ;
 struct list_head* trace_probe_probe_list (struct trace_probe*) ;

__attribute__((used)) static inline bool trace_probe_has_sibling(struct trace_probe *tp)
{
 struct list_head *list = trace_probe_probe_list(tp);

 return !list_empty(list) && !list_is_singular(list);
}
