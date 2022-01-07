
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
struct xt_table {unsigned int valid_hooks; int priority; int af; } ;
struct nf_hook_ops {size_t hooknum; int priority; int pf; int * hook; } ;
typedef int nf_hookfn ;


 int EINVAL ;
 int ENOMEM ;
 struct nf_hook_ops* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 size_t hweight32 (unsigned int) ;
 struct nf_hook_ops* kcalloc (size_t,int,int ) ;

struct nf_hook_ops *
xt_hook_ops_alloc(const struct xt_table *table, nf_hookfn *fn)
{
 unsigned int hook_mask = table->valid_hooks;
 uint8_t i, num_hooks = hweight32(hook_mask);
 uint8_t hooknum;
 struct nf_hook_ops *ops;

 if (!num_hooks)
  return ERR_PTR(-EINVAL);

 ops = kcalloc(num_hooks, sizeof(*ops), GFP_KERNEL);
 if (ops == ((void*)0))
  return ERR_PTR(-ENOMEM);

 for (i = 0, hooknum = 0; i < num_hooks && hook_mask != 0;
      hook_mask >>= 1, ++hooknum) {
  if (!(hook_mask & 1))
   continue;
  ops[i].hook = fn;
  ops[i].pf = table->af;
  ops[i].hooknum = hooknum;
  ops[i].priority = table->priority;
  ++i;
 }

 return ops;
}
