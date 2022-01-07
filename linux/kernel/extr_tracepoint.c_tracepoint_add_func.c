
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracepoint_func {int dummy; } ;
struct tracepoint {int (* regfunc ) () ;int key; int funcs; } ;


 int ENOMEM ;
 scalar_t__ IS_ERR (struct tracepoint_func*) ;
 int PTR_ERR (struct tracepoint_func*) ;
 int WARN_ON_ONCE (int) ;
 struct tracepoint_func* func_add (struct tracepoint_func**,struct tracepoint_func*,int) ;
 int lockdep_is_held (int *) ;
 int rcu_assign_pointer (int ,struct tracepoint_func*) ;
 struct tracepoint_func* rcu_dereference_protected (int ,int ) ;
 int release_probes (struct tracepoint_func*) ;
 int static_key_enabled (int *) ;
 int static_key_slow_inc (int *) ;
 int stub1 () ;
 int tracepoints_mutex ;

__attribute__((used)) static int tracepoint_add_func(struct tracepoint *tp,
          struct tracepoint_func *func, int prio)
{
 struct tracepoint_func *old, *tp_funcs;
 int ret;

 if (tp->regfunc && !static_key_enabled(&tp->key)) {
  ret = tp->regfunc();
  if (ret < 0)
   return ret;
 }

 tp_funcs = rcu_dereference_protected(tp->funcs,
   lockdep_is_held(&tracepoints_mutex));
 old = func_add(&tp_funcs, func, prio);
 if (IS_ERR(old)) {
  WARN_ON_ONCE(PTR_ERR(old) != -ENOMEM);
  return PTR_ERR(old);
 }







 rcu_assign_pointer(tp->funcs, tp_funcs);
 if (!static_key_enabled(&tp->key))
  static_key_slow_inc(&tp->key);
 release_probes(old);
 return 0;
}
