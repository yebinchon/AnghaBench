
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __start___tracepoints_ptrs ;
 int __stop___tracepoints_ptrs ;
 int for_each_tracepoint_range (int ,int ,void (*) (struct tracepoint*,void*),void*) ;

void for_each_kernel_tracepoint(void (*fct)(struct tracepoint *tp, void *priv),
  void *priv)
{
 for_each_tracepoint_range(__start___tracepoints_ptrs,
  __stop___tracepoints_ptrs, fct, priv);
}
