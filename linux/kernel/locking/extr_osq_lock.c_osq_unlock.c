
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optimistic_spin_queue {int tail; } ;
struct optimistic_spin_node {int locked; int next; } ;


 int OSQ_UNLOCKED_VAL ;
 int WRITE_ONCE (int ,int) ;
 int atomic_cmpxchg_release (int *,int,int ) ;
 int encode_cpu (int ) ;
 scalar_t__ likely (int) ;
 int osq_node ;
 struct optimistic_spin_node* osq_wait_next (struct optimistic_spin_queue*,struct optimistic_spin_node*,int *) ;
 int smp_processor_id () ;
 struct optimistic_spin_node* this_cpu_ptr (int *) ;
 struct optimistic_spin_node* xchg (int *,int *) ;

void osq_unlock(struct optimistic_spin_queue *lock)
{
 struct optimistic_spin_node *node, *next;
 int curr = encode_cpu(smp_processor_id());




 if (likely(atomic_cmpxchg_release(&lock->tail, curr,
       OSQ_UNLOCKED_VAL) == curr))
  return;




 node = this_cpu_ptr(&osq_node);
 next = xchg(&node->next, ((void*)0));
 if (next) {
  WRITE_ONCE(next->locked, 1);
  return;
 }

 next = osq_wait_next(lock, node, ((void*)0));
 if (next)
  WRITE_ONCE(next->locked, 1);
}
