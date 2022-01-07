
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tracepoint_ptr_t ;


 struct tracepoint* tracepoint_ptr_deref (int *) ;

__attribute__((used)) static void for_each_tracepoint_range(
  tracepoint_ptr_t *begin, tracepoint_ptr_t *end,
  void (*fct)(struct tracepoint *tp, void *priv),
  void *priv)
{
 tracepoint_ptr_t *iter;

 if (!begin)
  return;
 for (iter = begin; iter < end; iter++)
  fct(tracepoint_ptr_deref(iter), priv);
}
