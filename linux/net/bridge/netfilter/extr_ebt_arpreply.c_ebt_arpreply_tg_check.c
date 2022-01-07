
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_tgchk_param {struct ebt_entry* entryinfo; struct ebt_arpreply_info* targinfo; } ;
struct ebt_entry {scalar_t__ ethproto; int invflags; } ;
struct ebt_arpreply_info {scalar_t__ target; } ;


 scalar_t__ BASE_CHAIN ;
 int EBT_IPROTO ;
 scalar_t__ EBT_RETURN ;
 int EINVAL ;
 int ETH_P_ARP ;
 scalar_t__ ebt_invalid_target (scalar_t__) ;
 scalar_t__ htons (int ) ;

__attribute__((used)) static int ebt_arpreply_tg_check(const struct xt_tgchk_param *par)
{
 const struct ebt_arpreply_info *info = par->targinfo;
 const struct ebt_entry *e = par->entryinfo;

 if (BASE_CHAIN && info->target == EBT_RETURN)
  return -EINVAL;
 if (e->ethproto != htons(ETH_P_ARP) ||
     e->invflags & EBT_IPROTO)
  return -EINVAL;
 if (ebt_invalid_target(info->target))
  return -EINVAL;

 return 0;
}
