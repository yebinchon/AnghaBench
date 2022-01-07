
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xdp_rxq_info {scalar_t__ reg_state; int queue_index; struct net_device* dev; } ;
struct net_device {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ REG_STATE_REGISTERED ;
 scalar_t__ REG_STATE_UNUSED ;
 int WARN (int,char*) ;
 int xdp_rxq_info_init (struct xdp_rxq_info*) ;
 int xdp_rxq_info_unreg (struct xdp_rxq_info*) ;

int xdp_rxq_info_reg(struct xdp_rxq_info *xdp_rxq,
       struct net_device *dev, u32 queue_index)
{
 if (xdp_rxq->reg_state == REG_STATE_UNUSED) {
  WARN(1, "Driver promised not to register this");
  return -EINVAL;
 }

 if (xdp_rxq->reg_state == REG_STATE_REGISTERED) {
  WARN(1, "Missing unregister, handled but fix driver");
  xdp_rxq_info_unreg(xdp_rxq);
 }

 if (!dev) {
  WARN(1, "Missing net_device from driver");
  return -ENODEV;
 }


 xdp_rxq_info_init(xdp_rxq);
 xdp_rxq->dev = dev;
 xdp_rxq->queue_index = queue_index;

 xdp_rxq->reg_state = REG_STATE_REGISTERED;
 return 0;
}
