
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {TYPE_2__* netdev_ops; int name; } ;
struct TYPE_4__ {int ndo_start_xmit; } ;
struct mpoa_client {TYPE_2__ new_ops; TYPE_2__* old_ops; TYPE_1__* dev; } ;
struct TYPE_3__ {int name; } ;


 int dprintk (char*,int ) ;
 int mpc_send_packet ;
 int pr_info (char*,int ) ;

__attribute__((used)) static void start_mpc(struct mpoa_client *mpc, struct net_device *dev)
{

 dprintk("(%s)\n", mpc->dev->name);
 if (!dev->netdev_ops)
  pr_info("(%s) not starting\n", dev->name);
 else {
  mpc->old_ops = dev->netdev_ops;
  mpc->new_ops = *mpc->old_ops;
  mpc->new_ops.ndo_start_xmit = mpc_send_packet;
  dev->netdev_ops = &mpc->new_ops;
 }
}
