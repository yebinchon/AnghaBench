
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct xt_hashlimit_mtinfo1* matchinfo; } ;
struct xt_hashlimit_mtinfo1 {int name; int hinfo; int cfg; } ;
struct hashlimit_cfg3 {int dummy; } ;


 int cfg_copy (struct hashlimit_cfg3*,void*,int) ;
 int hashlimit_mt_check_common (struct xt_mtchk_param const*,int *,struct hashlimit_cfg3*,int ,int) ;
 int xt_check_proc_name (int ,int) ;

__attribute__((used)) static int hashlimit_mt_check_v1(const struct xt_mtchk_param *par)
{
 struct xt_hashlimit_mtinfo1 *info = par->matchinfo;
 struct hashlimit_cfg3 cfg = {};
 int ret;

 ret = xt_check_proc_name(info->name, sizeof(info->name));
 if (ret)
  return ret;

 ret = cfg_copy(&cfg, (void *)&info->cfg, 1);
 if (ret)
  return ret;

 return hashlimit_mt_check_common(par, &info->hinfo,
      &cfg, info->name, 1);
}
