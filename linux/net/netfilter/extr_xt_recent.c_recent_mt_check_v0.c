
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int all; } ;
struct xt_recent_mtinfo_v1 {TYPE_1__ mask; } ;
struct xt_recent_mtinfo_v0 {int dummy; } ;
struct xt_recent_mtinfo {int dummy; } ;
struct xt_mtchk_param {struct xt_recent_mtinfo_v0* matchinfo; } ;


 int memcpy (struct xt_recent_mtinfo_v1*,struct xt_recent_mtinfo_v0 const*,int) ;
 int memset (int ,int,int) ;
 int recent_mt_check (struct xt_mtchk_param const*,struct xt_recent_mtinfo_v1*) ;

__attribute__((used)) static int recent_mt_check_v0(const struct xt_mtchk_param *par)
{
 const struct xt_recent_mtinfo_v0 *info_v0 = par->matchinfo;
 struct xt_recent_mtinfo_v1 info_v1;


 memcpy(&info_v1, info_v0, sizeof(struct xt_recent_mtinfo));

 memset(info_v1.mask.all, 0xFF, sizeof(info_v1.mask.all));

 return recent_mt_check(par, &info_v1);
}
