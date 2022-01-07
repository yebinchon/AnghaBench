
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_node {struct hlist_node* next; } ;
struct hlist_head {struct hlist_node* first; } ;
typedef int loff_t ;


 void* SEQ_START_TOKEN ;

struct hlist_node *seq_hlist_next(void *v, struct hlist_head *head,
      loff_t *ppos)
{
 struct hlist_node *node = v;

 ++*ppos;
 if (v == SEQ_START_TOKEN)
  return head->first;
 else
  return node->next;
}
