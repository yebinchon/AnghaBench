
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct xt_ct_target_info_v1* targinfo; } ;
struct xt_ct_target_info_v1 {int flags; } ;


 int EINVAL ;
 int XT_CT_MASK ;
 int xt_ct_tg_check (struct xt_tgchk_param const*,struct xt_ct_target_info_v1*) ;

__attribute__((used)) static int xt_ct_tg_check_v2(const struct xt_tgchk_param *par)
{
 struct xt_ct_target_info_v1 *info = par->targinfo;

 if (info->flags & ~XT_CT_MASK)
  return -EINVAL;

 return xt_ct_tg_check(par, par->targinfo);
}
