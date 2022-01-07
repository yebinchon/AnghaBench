
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_freelist_node {struct pcpu_freelist_node* next; } ;
struct pcpu_freelist_head {int lock; struct pcpu_freelist_node* first; } ;


 int raw_spin_lock (int *) ;
 int raw_spin_unlock (int *) ;

__attribute__((used)) static inline void ___pcpu_freelist_push(struct pcpu_freelist_head *head,
      struct pcpu_freelist_node *node)
{
 raw_spin_lock(&head->lock);
 node->next = head->first;
 head->first = node;
 raw_spin_unlock(&head->lock);
}
