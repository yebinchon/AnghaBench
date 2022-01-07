
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xt_tgchk_param {int net; struct xt_set_info_target_v0* targinfo; } ;
struct TYPE_3__ {scalar_t__* flags; } ;
struct TYPE_4__ {scalar_t__ index; TYPE_1__ u; } ;
struct xt_set_info_target_v0 {TYPE_2__ del_set; TYPE_2__ add_set; } ;
typedef scalar_t__ ip_set_id_t ;


 int ENOENT ;
 int ERANGE ;
 int IPSET_DIM_MAX ;
 scalar_t__ IPSET_INVALID_ID ;
 int compat_flags (TYPE_2__*) ;
 scalar_t__ ip_set_nfnl_get_byindex (int ,scalar_t__) ;
 int ip_set_nfnl_put (int ,scalar_t__) ;
 int pr_info_ratelimited (char*,...) ;

__attribute__((used)) static int
set_target_v0_checkentry(const struct xt_tgchk_param *par)
{
 struct xt_set_info_target_v0 *info = par->targinfo;
 ip_set_id_t index;

 if (info->add_set.index != IPSET_INVALID_ID) {
  index = ip_set_nfnl_get_byindex(par->net, info->add_set.index);
  if (index == IPSET_INVALID_ID) {
   pr_info_ratelimited("Cannot find add_set index %u as target\n",
         info->add_set.index);
   return -ENOENT;
  }
 }

 if (info->del_set.index != IPSET_INVALID_ID) {
  index = ip_set_nfnl_get_byindex(par->net, info->del_set.index);
  if (index == IPSET_INVALID_ID) {
   pr_info_ratelimited("Cannot find del_set index %u as target\n",
         info->del_set.index);
   if (info->add_set.index != IPSET_INVALID_ID)
    ip_set_nfnl_put(par->net, info->add_set.index);
   return -ENOENT;
  }
 }
 if (info->add_set.u.flags[IPSET_DIM_MAX - 1] != 0 ||
     info->del_set.u.flags[IPSET_DIM_MAX - 1] != 0) {
  pr_info_ratelimited("SET target dimension over the limit!\n");
  if (info->add_set.index != IPSET_INVALID_ID)
   ip_set_nfnl_put(par->net, info->add_set.index);
  if (info->del_set.index != IPSET_INVALID_ID)
   ip_set_nfnl_put(par->net, info->del_set.index);
  return -ERANGE;
 }


 compat_flags(&info->add_set);
 compat_flags(&info->del_set);

 return 0;
}
