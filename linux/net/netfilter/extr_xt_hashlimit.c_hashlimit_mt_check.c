
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct xt_hashlimit_mtinfo3* matchinfo; } ;
struct xt_hashlimit_mtinfo3 {int name; int cfg; int hinfo; } ;


 int hashlimit_mt_check_common (struct xt_mtchk_param const*,int *,int *,int ,int) ;
 int xt_check_proc_name (int ,int) ;

__attribute__((used)) static int hashlimit_mt_check(const struct xt_mtchk_param *par)
{
 struct xt_hashlimit_mtinfo3 *info = par->matchinfo;
 int ret;

 ret = xt_check_proc_name(info->name, sizeof(info->name));
 if (ret)
  return ret;

 return hashlimit_mt_check_common(par, &info->hinfo, &info->cfg,
      info->name, 3);
}
