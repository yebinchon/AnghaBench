
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {int matchinfo; } ;


 int recent_mt_check (struct xt_mtchk_param const*,int ) ;

__attribute__((used)) static int recent_mt_check_v1(const struct xt_mtchk_param *par)
{
 return recent_mt_check(par, par->matchinfo);
}
