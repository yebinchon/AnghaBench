
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc_mqprio_qopt {int num_tc; int* prio_tc_map; scalar_t__ hw; unsigned int* offset; unsigned int* count; } ;
struct net_device {unsigned int real_num_tx_queues; TYPE_1__* netdev_ops; } ;
struct TYPE_2__ {scalar_t__ ndo_setup_tc; } ;


 int EINVAL ;
 int TC_BITMASK ;
 int TC_MAX_QUEUE ;
 scalar_t__ TC_MQPRIO_HW_OFFLOAD_MAX ;

__attribute__((used)) static int mqprio_parse_opt(struct net_device *dev, struct tc_mqprio_qopt *qopt)
{
 int i, j;


 if (qopt->num_tc > TC_MAX_QUEUE)
  return -EINVAL;


 for (i = 0; i < TC_BITMASK + 1; i++) {
  if (qopt->prio_tc_map[i] >= qopt->num_tc)
   return -EINVAL;
 }





 if (qopt->hw > TC_MQPRIO_HW_OFFLOAD_MAX)
  qopt->hw = TC_MQPRIO_HW_OFFLOAD_MAX;






 if (qopt->hw)
  return dev->netdev_ops->ndo_setup_tc ? 0 : -EINVAL;

 for (i = 0; i < qopt->num_tc; i++) {
  unsigned int last = qopt->offset[i] + qopt->count[i];




  if (qopt->offset[i] >= dev->real_num_tx_queues ||
      !qopt->count[i] ||
      last > dev->real_num_tx_queues)
   return -EINVAL;


  for (j = i + 1; j < qopt->num_tc; j++) {
   if (last > qopt->offset[j])
    return -EINVAL;
  }
 }

 return 0;
}
