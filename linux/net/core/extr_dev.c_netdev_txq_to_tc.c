
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netdev_tc_txq {unsigned int offset; unsigned int count; } ;
struct net_device {struct netdev_tc_txq* tc_to_txq; scalar_t__ num_tc; } ;


 int TC_MAX_QUEUE ;

int netdev_txq_to_tc(struct net_device *dev, unsigned int txq)
{
 if (dev->num_tc) {
  struct netdev_tc_txq *tc = &dev->tc_to_txq[0];
  int i;


  for (i = 0; i < TC_MAX_QUEUE; i++, tc++) {
   if ((txq - tc->offset) < tc->count)
    return i;
  }


  return -1;
 }

 return 0;
}
