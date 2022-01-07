
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int used ;
typedef int u16 ;
struct xt_tgchk_param {size_t family; int hook_mask; TYPE_1__* target; int table; } ;
typedef int allow ;
struct TYPE_2__ {int hooks; int (* checkentry ) (struct xt_tgchk_param*) ;int proto; int name; int * table; int targetsize; int revision; } ;


 int EINVAL ;
 int EIO ;
 unsigned int XT_ALIGN (int ) ;
 int pr_err_ratelimited (char*,int ,int ,int ,unsigned int,unsigned int) ;
 int pr_info_ratelimited (char*,int ,int ,int ,...) ;
 scalar_t__ strcmp (int *,int ) ;
 int stub1 (struct xt_tgchk_param*) ;
 int textify_hooks (char*,int,int,size_t) ;
 int * xt_prefix ;

int xt_check_target(struct xt_tgchk_param *par,
      unsigned int size, u16 proto, bool inv_proto)
{
 int ret;

 if (XT_ALIGN(par->target->targetsize) != size) {
  pr_err_ratelimited("%s_tables: %s.%u target: invalid size %u (kernel) != (user) %u\n",
       xt_prefix[par->family], par->target->name,
       par->target->revision,
       XT_ALIGN(par->target->targetsize), size);
  return -EINVAL;
 }
 if (par->target->table != ((void*)0) &&
     strcmp(par->target->table, par->table) != 0) {
  pr_info_ratelimited("%s_tables: %s target: only valid in %s table, not %s\n",
        xt_prefix[par->family], par->target->name,
        par->target->table, par->table);
  return -EINVAL;
 }
 if (par->target->hooks && (par->hook_mask & ~par->target->hooks) != 0) {
  char used[64], allow[64];

  pr_info_ratelimited("%s_tables: %s target: used from hooks %s, but only usable from %s\n",
        xt_prefix[par->family], par->target->name,
        textify_hooks(used, sizeof(used),
        par->hook_mask, par->family),
        textify_hooks(allow, sizeof(allow),
        par->target->hooks,
        par->family));
  return -EINVAL;
 }
 if (par->target->proto && (par->target->proto != proto || inv_proto)) {
  pr_info_ratelimited("%s_tables: %s target: only valid for protocol %u\n",
        xt_prefix[par->family], par->target->name,
        par->target->proto);
  return -EINVAL;
 }
 if (par->target->checkentry != ((void*)0)) {
  ret = par->target->checkentry(par);
  if (ret < 0)
   return ret;
  else if (ret > 0)

   return -EIO;
 }
 return 0;
}
