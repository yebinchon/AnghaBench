
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_hook_ops {int dummy; } ;
struct nf_hook_entries_rcu_head {int head; struct nf_hook_entries* allocation; } ;
struct nf_hook_entries {unsigned int num_hook_entries; } ;


 int __nf_hook_entries_free ;
 int call_rcu (int *,int ) ;
 struct nf_hook_ops** nf_hook_entries_get_hook_ops (struct nf_hook_entries*) ;

__attribute__((used)) static void nf_hook_entries_free(struct nf_hook_entries *e)
{
 struct nf_hook_entries_rcu_head *head;
 struct nf_hook_ops **ops;
 unsigned int num;

 if (!e)
  return;

 num = e->num_hook_entries;
 ops = nf_hook_entries_get_hook_ops(e);
 head = (void *)&ops[num];
 head->allocation = e;
 call_rcu(&head->head, __nf_hook_entries_free);
}
