
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net {int dummy; } ;


 int RTNL_FAMILY_IPMR ;
 int ipmr_mr_table_iter ;
 int ipmr_rules_dump ;
 int mr_dump (struct net*,struct notifier_block*,int ,int ,int ,int *) ;
 int mrt_lock ;

__attribute__((used)) static int ipmr_dump(struct net *net, struct notifier_block *nb)
{
 return mr_dump(net, nb, RTNL_FAMILY_IPMR, ipmr_rules_dump,
         ipmr_mr_table_iter, &mrt_lock);
}
