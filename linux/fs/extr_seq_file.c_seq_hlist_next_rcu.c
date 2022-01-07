
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_node {int next; } ;
struct hlist_head {int first; } ;
typedef int loff_t ;


 void* SEQ_START_TOKEN ;
 struct hlist_node* rcu_dereference (int ) ;

struct hlist_node *seq_hlist_next_rcu(void *v,
          struct hlist_head *head,
          loff_t *ppos)
{
 struct hlist_node *node = v;

 ++*ppos;
 if (v == SEQ_START_TOKEN)
  return rcu_dereference(head->first);
 else
  return rcu_dereference(node->next);
}
