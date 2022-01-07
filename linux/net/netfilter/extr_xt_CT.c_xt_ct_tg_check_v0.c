
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct xt_ct_target_info* targinfo; } ;
struct xt_ct_target_info_v1 {int flags; int ct; int helper; int exp_events; int ct_events; int zone; } ;
struct xt_ct_target_info {int flags; int ct; int helper; int exp_events; int ct_events; int zone; } ;


 int EINVAL ;
 int XT_CT_NOTRACK ;
 int memcpy (int ,int ,int) ;
 int xt_ct_tg_check (struct xt_tgchk_param const*,struct xt_ct_target_info_v1*) ;

__attribute__((used)) static int xt_ct_tg_check_v0(const struct xt_tgchk_param *par)
{
 struct xt_ct_target_info *info = par->targinfo;
 struct xt_ct_target_info_v1 info_v1 = {
  .flags = info->flags,
  .zone = info->zone,
  .ct_events = info->ct_events,
  .exp_events = info->exp_events,
 };
 int ret;

 if (info->flags & ~XT_CT_NOTRACK)
  return -EINVAL;

 memcpy(info_v1.helper, info->helper, sizeof(info->helper));

 ret = xt_ct_tg_check(par, &info_v1);
 if (ret < 0)
  return ret;

 info->ct = info_v1.ct;

 return ret;
}
