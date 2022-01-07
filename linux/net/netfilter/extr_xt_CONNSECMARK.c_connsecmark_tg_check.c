
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {int table; int family; int net; struct xt_connsecmark_target_info* targinfo; } ;
struct xt_connsecmark_target_info {int mode; } ;




 int EINVAL ;
 int nf_ct_netns_get (int ,int) ;
 int pr_info_ratelimited (char*,int) ;
 scalar_t__ strcmp (int,char*) ;

__attribute__((used)) static int connsecmark_tg_check(const struct xt_tgchk_param *par)
{
 const struct xt_connsecmark_target_info *info = par->targinfo;
 int ret;

 if (strcmp(par->table, "mangle") != 0 &&
     strcmp(par->table, "security") != 0) {
  pr_info_ratelimited("only valid in \'mangle\' or \'security\' table, not \'%s\'\n",
        par->table);
  return -EINVAL;
 }

 switch (info->mode) {
 case 128:
 case 129:
  break;

 default:
  pr_info_ratelimited("invalid mode: %hu\n", info->mode);
  return -EINVAL;
 }

 ret = nf_ct_netns_get(par->net, par->family);
 if (ret < 0)
  pr_info_ratelimited("cannot load conntrack support for proto=%u\n",
        par->family);
 return ret;
}
