
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct ebt_nat_info* targinfo; } ;
struct ebt_nat_info {int target; } ;


 scalar_t__ BASE_CHAIN ;
 int EBT_RETURN ;
 int EBT_VERDICT_BITS ;
 int EINVAL ;
 int NAT_ARP_BIT ;
 scalar_t__ ebt_invalid_target (int) ;

__attribute__((used)) static int ebt_snat_tg_check(const struct xt_tgchk_param *par)
{
 const struct ebt_nat_info *info = par->targinfo;
 int tmp;

 tmp = info->target | ~EBT_VERDICT_BITS;
 if (BASE_CHAIN && tmp == EBT_RETURN)
  return -EINVAL;

 if (ebt_invalid_target(tmp))
  return -EINVAL;
 tmp = info->target | EBT_VERDICT_BITS;
 if ((tmp & ~NAT_ARP_BIT) != ~NAT_ARP_BIT)
  return -EINVAL;
 return 0;
}
