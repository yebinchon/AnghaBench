
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct xt_DSCP_info* targinfo; } ;
struct xt_DSCP_info {scalar_t__ dscp; } ;


 int EDOM ;
 scalar_t__ XT_DSCP_MAX ;

__attribute__((used)) static int dscp_tg_check(const struct xt_tgchk_param *par)
{
 const struct xt_DSCP_info *info = par->targinfo;

 if (info->dscp > XT_DSCP_MAX)
  return -EDOM;
 return 0;
}
