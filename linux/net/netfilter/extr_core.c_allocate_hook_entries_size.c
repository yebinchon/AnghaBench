
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct nf_hook_ops {int dummy; } ;
struct nf_hook_entry {int dummy; } ;
struct nf_hook_entries_rcu_head {int dummy; } ;
struct nf_hook_entries {int num_hook_entries; } ;


 int GFP_KERNEL ;
 struct nf_hook_entries* kvzalloc (size_t,int ) ;

__attribute__((used)) static struct nf_hook_entries *allocate_hook_entries_size(u16 num)
{
 struct nf_hook_entries *e;
 size_t alloc = sizeof(*e) +
         sizeof(struct nf_hook_entry) * num +
         sizeof(struct nf_hook_ops *) * num +
         sizeof(struct nf_hook_entries_rcu_head);

 if (num == 0)
  return ((void*)0);

 e = kvzalloc(alloc, GFP_KERNEL);
 if (e)
  e->num_hook_entries = num;
 return e;
}
