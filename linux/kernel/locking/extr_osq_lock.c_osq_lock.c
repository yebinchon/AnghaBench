
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct optimistic_spin_queue {int tail; } ;
struct optimistic_spin_node {int cpu; struct optimistic_spin_node* next; struct optimistic_spin_node* prev; struct optimistic_spin_node* locked; } ;


 int OSQ_UNLOCKED_VAL ;
 struct optimistic_spin_node* READ_ONCE (struct optimistic_spin_node*) ;
 int WRITE_ONCE (struct optimistic_spin_node*,struct optimistic_spin_node*) ;
 int atomic_xchg (int *,int) ;
 struct optimistic_spin_node* cmpxchg (struct optimistic_spin_node**,struct optimistic_spin_node*,int *) ;
 int cpu_relax () ;
 struct optimistic_spin_node* decode_cpu (int) ;
 int encode_cpu (int ) ;
 scalar_t__ need_resched () ;
 int node_cpu (struct optimistic_spin_node*) ;
 int osq_node ;
 struct optimistic_spin_node* osq_wait_next (struct optimistic_spin_queue*,struct optimistic_spin_node*,struct optimistic_spin_node*) ;
 scalar_t__ smp_load_acquire (struct optimistic_spin_node**) ;
 int smp_processor_id () ;
 int smp_wmb () ;
 struct optimistic_spin_node* this_cpu_ptr (int *) ;
 scalar_t__ vcpu_is_preempted (int ) ;

bool osq_lock(struct optimistic_spin_queue *lock)
{
 struct optimistic_spin_node *node = this_cpu_ptr(&osq_node);
 struct optimistic_spin_node *prev, *next;
 int curr = encode_cpu(smp_processor_id());
 int old;

 node->locked = 0;
 node->next = ((void*)0);
 node->cpu = curr;







 old = atomic_xchg(&lock->tail, curr);
 if (old == OSQ_UNLOCKED_VAL)
  return 1;

 prev = decode_cpu(old);
 node->prev = prev;
 smp_wmb();

 WRITE_ONCE(prev->next, node);
 while (!READ_ONCE(node->locked)) {





  if (need_resched() || vcpu_is_preempted(node_cpu(node->prev)))
   goto unqueue;

  cpu_relax();
 }
 return 1;

unqueue:
 for (;;) {
  if (prev->next == node &&
      cmpxchg(&prev->next, node, ((void*)0)) == node)
   break;






  if (smp_load_acquire(&node->locked))
   return 1;

  cpu_relax();





  prev = READ_ONCE(node->prev);
 }
 next = osq_wait_next(lock, node, prev);
 if (!next)
  return 0;
 WRITE_ONCE(next->prev, prev);
 WRITE_ONCE(prev->next, next);

 return 0;
}
