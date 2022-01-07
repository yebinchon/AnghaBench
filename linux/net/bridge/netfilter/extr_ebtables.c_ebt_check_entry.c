
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tgpar ;
struct xt_tgchk_param {char const* table; unsigned int hook_mask; int targinfo; struct xt_target* target; scalar_t__ family; struct ebt_entry* entryinfo; struct xt_tgchk_param* net; } ;
struct xt_target {scalar_t__ family; int me; } ;
struct xt_mtchk_param {char const* table; unsigned int hook_mask; int targinfo; struct xt_target* target; scalar_t__ family; struct ebt_entry* entryinfo; struct xt_mtchk_param* net; } ;
struct net {char const* table; unsigned int hook_mask; int targinfo; struct xt_target* target; scalar_t__ family; struct ebt_entry* entryinfo; struct net* net; } ;
struct ebt_table_info {scalar_t__* hook_entry; } ;
struct ebt_standard_target {int verdict; } ;
struct TYPE_4__ {struct xt_target* target; int name; } ;
struct ebt_entry_target {size_t target_size; int data; TYPE_2__ u; } ;
struct ebt_entry {int bitmask; int invflags; size_t next_offset; size_t target_offset; int ethproto; } ;
struct TYPE_3__ {scalar_t__ chaininfo; } ;
struct ebt_cl_stack {unsigned int hookmask; TYPE_1__ cs; } ;
typedef int mtpar ;


 int EBT_802_3 ;
 int EBT_F_MASK ;
 int EBT_INV_MASK ;
 int EBT_IPROTO ;
 int EBT_MATCH_ITERATE (struct ebt_entry*,int ,struct xt_tgchk_param*,unsigned int*) ;
 int EBT_NOPROTO ;
 int EBT_WATCHER_ITERATE (struct ebt_entry*,int ,struct xt_tgchk_param*,unsigned int*) ;
 int EFAULT ;
 int EINVAL ;
 int ENOENT ;
 scalar_t__ IS_ERR (struct xt_target*) ;
 scalar_t__ NFPROTO_BRIDGE ;
 unsigned int NF_BR_NUMHOOKS ;
 int NUM_STANDARD_TARGETS ;
 int PTR_ERR (struct xt_target*) ;
 int ebt_check_match ;
 int ebt_check_watcher ;
 int ebt_cleanup_match ;
 int ebt_cleanup_watcher ;
 struct ebt_entry_target* ebt_get_target (struct ebt_entry*) ;
 struct xt_target ebt_standard_target ;
 int memset (struct xt_tgchk_param*,int ,int) ;
 int module_put (int ) ;
 int ntohs (int ) ;
 int xt_check_target (struct xt_tgchk_param*,size_t,int ,int) ;
 struct xt_target* xt_request_find_target (scalar_t__,int ,int ) ;

__attribute__((used)) static inline int
ebt_check_entry(struct ebt_entry *e, struct net *net,
  const struct ebt_table_info *newinfo,
  const char *name, unsigned int *cnt,
  struct ebt_cl_stack *cl_s, unsigned int udc_cnt)
{
 struct ebt_entry_target *t;
 struct xt_target *target;
 unsigned int i, j, hook = 0, hookmask = 0;
 size_t gap;
 int ret;
 struct xt_mtchk_param mtpar;
 struct xt_tgchk_param tgpar;


 if (e->bitmask == 0)
  return 0;

 if (e->bitmask & ~EBT_F_MASK)
  return -EINVAL;

 if (e->invflags & ~EBT_INV_MASK)
  return -EINVAL;

 if ((e->bitmask & EBT_NOPROTO) && (e->bitmask & EBT_802_3))
  return -EINVAL;


 for (i = 0; i < NF_BR_NUMHOOKS; i++) {
  if (!newinfo->hook_entry[i])
   continue;
  if ((char *)newinfo->hook_entry[i] < (char *)e)
   hook = i;
  else
   break;
 }



 if (i < NF_BR_NUMHOOKS)
  hookmask = (1 << hook) | (1 << NF_BR_NUMHOOKS);
 else {
  for (i = 0; i < udc_cnt; i++)
   if ((char *)(cl_s[i].cs.chaininfo) > (char *)e)
    break;
  if (i == 0)
   hookmask = (1 << hook) | (1 << NF_BR_NUMHOOKS);
  else
   hookmask = cl_s[i - 1].hookmask;
 }
 i = 0;

 memset(&mtpar, 0, sizeof(mtpar));
 memset(&tgpar, 0, sizeof(tgpar));
 mtpar.net = tgpar.net = net;
 mtpar.table = tgpar.table = name;
 mtpar.entryinfo = tgpar.entryinfo = e;
 mtpar.hook_mask = tgpar.hook_mask = hookmask;
 mtpar.family = tgpar.family = NFPROTO_BRIDGE;
 ret = EBT_MATCH_ITERATE(e, ebt_check_match, &mtpar, &i);
 if (ret != 0)
  goto cleanup_matches;
 j = 0;
 ret = EBT_WATCHER_ITERATE(e, ebt_check_watcher, &tgpar, &j);
 if (ret != 0)
  goto cleanup_watchers;
 t = ebt_get_target(e);
 gap = e->next_offset - e->target_offset;

 target = xt_request_find_target(NFPROTO_BRIDGE, t->u.name, 0);
 if (IS_ERR(target)) {
  ret = PTR_ERR(target);
  goto cleanup_watchers;
 }


 if (target->family != NFPROTO_BRIDGE) {
  module_put(target->me);
  ret = -ENOENT;
  goto cleanup_watchers;
 }

 t->u.target = target;
 if (t->u.target == &ebt_standard_target) {
  if (gap < sizeof(struct ebt_standard_target)) {
   ret = -EFAULT;
   goto cleanup_watchers;
  }
  if (((struct ebt_standard_target *)t)->verdict <
     -NUM_STANDARD_TARGETS) {
   ret = -EFAULT;
   goto cleanup_watchers;
  }
 } else if (t->target_size > gap - sizeof(struct ebt_entry_target)) {
  module_put(t->u.target->me);
  ret = -EFAULT;
  goto cleanup_watchers;
 }

 tgpar.target = target;
 tgpar.targinfo = t->data;
 ret = xt_check_target(&tgpar, t->target_size,
       ntohs(e->ethproto), e->invflags & EBT_IPROTO);
 if (ret < 0) {
  module_put(target->me);
  goto cleanup_watchers;
 }
 (*cnt)++;
 return 0;
cleanup_watchers:
 EBT_WATCHER_ITERATE(e, ebt_cleanup_watcher, net, &j);
cleanup_matches:
 EBT_MATCH_ITERATE(e, ebt_cleanup_match, net, &i);
 return ret;
}
