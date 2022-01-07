
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optimistic_spin_queue {int tail; } ;
struct optimistic_spin_node {int cpu; scalar_t__ next; } ;


 int OSQ_UNLOCKED_VAL ;
 int atomic_cmpxchg_acquire (int *,int,int) ;
 int atomic_read (int *) ;
 int cpu_relax () ;
 int encode_cpu (int ) ;
 int smp_processor_id () ;
 struct optimistic_spin_node* xchg (scalar_t__*,int *) ;

__attribute__((used)) static inline struct optimistic_spin_node *
osq_wait_next(struct optimistic_spin_queue *lock,
       struct optimistic_spin_node *node,
       struct optimistic_spin_node *prev)
{
 struct optimistic_spin_node *next = ((void*)0);
 int curr = encode_cpu(smp_processor_id());
 int old;






 old = prev ? prev->cpu : OSQ_UNLOCKED_VAL;

 for (;;) {
  if (atomic_read(&lock->tail) == curr &&
      atomic_cmpxchg_acquire(&lock->tail, curr, old) == curr) {





   break;
  }
  if (node->next) {
   next = xchg(&node->next, ((void*)0));
   if (next)
    break;
  }

  cpu_relax();
 }

 return next;
}
