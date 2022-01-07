
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_tc_txq {unsigned int offset; unsigned int count; } ;
struct net_device {struct netdev_tc_txq* tc_to_txq; scalar_t__ num_tc; } ;


 int TC_BITMASK ;
 int netdev_get_prio_tc_map (struct net_device*,int) ;
 int netdev_set_prio_tc_map (struct net_device*,int,int ) ;
 int pr_warn (char*,...) ;

__attribute__((used)) static void netif_setup_tc(struct net_device *dev, unsigned int txq)
{
 int i;
 struct netdev_tc_txq *tc = &dev->tc_to_txq[0];


 if (tc->offset + tc->count > txq) {
  pr_warn("Number of in use tx queues changed invalidating tc mappings. Priority traffic classification disabled!\n");
  dev->num_tc = 0;
  return;
 }


 for (i = 1; i < TC_BITMASK + 1; i++) {
  int q = netdev_get_prio_tc_map(dev, i);

  tc = &dev->tc_to_txq[q];
  if (tc->offset + tc->count > txq) {
   pr_warn("Number of in use tx queues changed. Priority %i to tc mapping %i is no longer valid. Setting map to 0\n",
    i, q);
   netdev_set_prio_tc_map(dev, i, 0);
  }
 }
}
