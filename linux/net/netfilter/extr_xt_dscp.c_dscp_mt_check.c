
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_mtchk_param {struct xt_dscp_info* matchinfo; } ;
struct xt_dscp_info {scalar_t__ dscp; } ;


 int EDOM ;
 scalar_t__ XT_DSCP_MAX ;

__attribute__((used)) static int dscp_mt_check(const struct xt_mtchk_param *par)
{
 const struct xt_dscp_info *info = par->matchinfo;

 if (info->dscp > XT_DSCP_MAX)
  return -EDOM;

 return 0;
}
