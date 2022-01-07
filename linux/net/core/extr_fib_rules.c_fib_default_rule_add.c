
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct fib_rules_ops {int rules_list; int fro_net; int rule_size; } ;
struct fib_rule {int suppress_prefixlen; int suppress_ifgroup; int list; int uid_range; int fr_net; int proto; void* flags; void* table; void* pref; int action; int refcnt; } ;


 int ENOMEM ;
 int FR_ACT_TO_TBL ;
 int GFP_KERNEL ;
 int RTPROT_KERNEL ;
 int fib_kuid_range_unset ;
 struct fib_rule* kzalloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int refcount_set (int *,int) ;

int fib_default_rule_add(struct fib_rules_ops *ops,
    u32 pref, u32 table, u32 flags)
{
 struct fib_rule *r;

 r = kzalloc(ops->rule_size, GFP_KERNEL);
 if (r == ((void*)0))
  return -ENOMEM;

 refcount_set(&r->refcnt, 1);
 r->action = FR_ACT_TO_TBL;
 r->pref = pref;
 r->table = table;
 r->flags = flags;
 r->proto = RTPROT_KERNEL;
 r->fr_net = ops->fro_net;
 r->uid_range = fib_kuid_range_unset;

 r->suppress_prefixlen = -1;
 r->suppress_ifgroup = -1;



 list_add_tail(&r->list, &ops->rules_list);
 return 0;
}
