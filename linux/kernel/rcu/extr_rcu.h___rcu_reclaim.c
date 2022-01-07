
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcu_head {int (* func ) (struct rcu_head*) ;} ;
typedef int (* rcu_callback_t ) (struct rcu_head*) ;


 int WRITE_ONCE (int (*) (struct rcu_head*),int (*) (struct rcu_head*)) ;
 scalar_t__ __is_kfree_rcu_offset (unsigned long) ;
 int kfree (void*) ;
 int rcu_callback_map ;
 int rcu_lock_acquire (int *) ;
 int rcu_lock_release (int *) ;
 int trace_rcu_invoke_callback (char const*,struct rcu_head*) ;
 int trace_rcu_invoke_kfree_callback (char const*,struct rcu_head*,unsigned long) ;

__attribute__((used)) static inline bool __rcu_reclaim(const char *rn, struct rcu_head *head)
{
 rcu_callback_t f;
 unsigned long offset = (unsigned long)head->func;

 rcu_lock_acquire(&rcu_callback_map);
 if (__is_kfree_rcu_offset(offset)) {
  trace_rcu_invoke_kfree_callback(rn, head, offset);
  kfree((void *)head - offset);
  rcu_lock_release(&rcu_callback_map);
  return 1;
 } else {
  trace_rcu_invoke_callback(rn, head);
  f = head->func;
  WRITE_ONCE(head->func, (rcu_callback_t)0L);
  f(head);
  rcu_lock_release(&rcu_callback_map);
  return 0;
 }
}
