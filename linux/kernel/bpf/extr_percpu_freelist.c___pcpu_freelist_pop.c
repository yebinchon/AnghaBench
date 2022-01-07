
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_freelist_node {struct pcpu_freelist_node* next; } ;
struct pcpu_freelist_head {int lock; struct pcpu_freelist_node* first; } ;
struct pcpu_freelist {int freelist; } ;


 int cpu_possible_mask ;
 int cpumask_next (int,int ) ;
 int nr_cpu_ids ;
 struct pcpu_freelist_head* per_cpu_ptr (int ,int) ;
 int raw_smp_processor_id () ;
 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

struct pcpu_freelist_node *__pcpu_freelist_pop(struct pcpu_freelist *s)
{
 struct pcpu_freelist_head *head;
 struct pcpu_freelist_node *node;
 int orig_cpu, cpu;

 orig_cpu = cpu = raw_smp_processor_id();
 while (1) {
  head = per_cpu_ptr(s->freelist, cpu);
  raw_spin_lock(&head->lock);
  node = head->first;
  if (node) {
   head->first = node->next;
   raw_spin_unlock(&head->lock);
   return node;
  }
  raw_spin_unlock(&head->lock);
  cpu = cpumask_next(cpu, cpu_possible_mask);
  if (cpu >= nr_cpu_ids)
   cpu = 0;
  if (cpu == orig_cpu)
   return ((void*)0);
 }
}
