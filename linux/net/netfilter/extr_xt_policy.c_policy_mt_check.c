
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_policy_info {int flags; scalar_t__ len; } ;
struct xt_mtchk_param {int hook_mask; struct xt_policy_info* matchinfo; } ;


 int EINVAL ;
 int NF_INET_LOCAL_IN ;
 int NF_INET_LOCAL_OUT ;
 int NF_INET_POST_ROUTING ;
 int NF_INET_PRE_ROUTING ;
 int XT_POLICY_MATCH_IN ;
 int XT_POLICY_MATCH_OUT ;
 scalar_t__ XT_POLICY_MAX_ELEM ;
 int pr_info_ratelimited (char*,char const*) ;

__attribute__((used)) static int policy_mt_check(const struct xt_mtchk_param *par)
{
 const struct xt_policy_info *info = par->matchinfo;
 const char *errmsg = "neither incoming nor outgoing policy selected";

 if (!(info->flags & (XT_POLICY_MATCH_IN|XT_POLICY_MATCH_OUT)))
  goto err;

 if (par->hook_mask & ((1 << NF_INET_PRE_ROUTING) |
     (1 << NF_INET_LOCAL_IN)) && info->flags & XT_POLICY_MATCH_OUT) {
  errmsg = "output policy not valid in PREROUTING and INPUT";
  goto err;
 }
 if (par->hook_mask & ((1 << NF_INET_POST_ROUTING) |
     (1 << NF_INET_LOCAL_OUT)) && info->flags & XT_POLICY_MATCH_IN) {
  errmsg = "input policy not valid in POSTROUTING and OUTPUT";
  goto err;
 }
 if (info->len > XT_POLICY_MAX_ELEM) {
  errmsg = "too many policy elements";
  goto err;
 }
 return 0;
err:
 pr_info_ratelimited("%s\n", errmsg);
 return -EINVAL;
}
