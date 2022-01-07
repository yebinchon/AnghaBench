
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgdtor_param {struct xt_ct_target_info* targinfo; } ;
struct xt_ct_target_info_v1 {int helper; int ct; int exp_events; int ct_events; int zone; int flags; } ;
struct xt_ct_target_info {int helper; int ct; int exp_events; int ct_events; int zone; int flags; } ;


 int memcpy (int ,int ,int) ;
 int xt_ct_tg_destroy (struct xt_tgdtor_param const*,struct xt_ct_target_info_v1*) ;

__attribute__((used)) static void xt_ct_tg_destroy_v0(const struct xt_tgdtor_param *par)
{
 struct xt_ct_target_info *info = par->targinfo;
 struct xt_ct_target_info_v1 info_v1 = {
  .flags = info->flags,
  .zone = info->zone,
  .ct_events = info->ct_events,
  .exp_events = info->exp_events,
  .ct = info->ct,
 };
 memcpy(info_v1.helper, info->helper, sizeof(info->helper));

 xt_ct_tg_destroy(par, &info_v1);
}
