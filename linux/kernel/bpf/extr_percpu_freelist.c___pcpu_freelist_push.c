
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu_freelist_node {int dummy; } ;
struct pcpu_freelist_head {int dummy; } ;
struct pcpu_freelist {int freelist; } ;


 int ___pcpu_freelist_push (struct pcpu_freelist_head*,struct pcpu_freelist_node*) ;
 struct pcpu_freelist_head* this_cpu_ptr (int ) ;

void __pcpu_freelist_push(struct pcpu_freelist *s,
   struct pcpu_freelist_node *node)
{
 struct pcpu_freelist_head *head = this_cpu_ptr(s->freelist);

 ___pcpu_freelist_push(head, node);
}
