
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfqnl_instance {int queue_total; } ;
struct nf_queue_entry {int list; } ;


 int list_del (int *) ;

__attribute__((used)) static void
__dequeue_entry(struct nfqnl_instance *queue, struct nf_queue_entry *entry)
{
 list_del(&entry->list);
 queue->queue_total--;
}
