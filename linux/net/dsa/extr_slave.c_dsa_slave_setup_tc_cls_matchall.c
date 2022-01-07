
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ chain_index; } ;
struct tc_cls_matchall_offload {int command; TYPE_1__ common; } ;
struct net_device {int dummy; } ;


 int EOPNOTSUPP ;


 int dsa_slave_add_cls_matchall (struct net_device*,struct tc_cls_matchall_offload*,int) ;
 int dsa_slave_del_cls_matchall (struct net_device*,struct tc_cls_matchall_offload*) ;

__attribute__((used)) static int dsa_slave_setup_tc_cls_matchall(struct net_device *dev,
        struct tc_cls_matchall_offload *cls,
        bool ingress)
{
 if (cls->common.chain_index)
  return -EOPNOTSUPP;

 switch (cls->command) {
 case 128:
  return dsa_slave_add_cls_matchall(dev, cls, ingress);
 case 129:
  dsa_slave_del_cls_matchall(dev, cls);
  return 0;
 default:
  return -EOPNOTSUPP;
 }
}
