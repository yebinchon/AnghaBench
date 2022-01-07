
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct net_device {int name; } ;
struct mpoa_client {int * mpoad_vcc; struct net_device* dev; int dev_num; } ;
struct lec_priv {int lane_version; int itfnum; TYPE_1__* lane2_ops; } ;
struct TYPE_2__ {int associate_indicator; } ;
 int NOTIFY_DONE ;
 struct mpoa_client* alloc_mpc () ;
 int dev_hold (struct net_device*) ;
 int dev_net (struct net_device*) ;
 int dev_put (struct net_device*) ;
 int dprintk (char*,int ) ;
 struct mpoa_client* find_mpc_by_itfnum (int ) ;
 struct mpoa_client* find_mpc_by_lec (struct net_device*) ;
 int init_net ;
 int lane2_assoc_ind ;
 int net_eq (int ,int *) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 struct lec_priv* netdev_priv (struct net_device*) ;
 int pr_info (char*) ;
 int start_mpc (struct mpoa_client*,struct net_device*) ;
 int stop_mpc (struct mpoa_client*) ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static int mpoa_event_listener(struct notifier_block *mpoa_notifier,
          unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct mpoa_client *mpc;
 struct lec_priv *priv;

 if (!net_eq(dev_net(dev), &init_net))
  return NOTIFY_DONE;

 if (strncmp(dev->name, "lec", 3))
  return NOTIFY_DONE;

 switch (event) {
 case 130:
  priv = netdev_priv(dev);
  if (priv->lane_version < 2)
   break;
  priv->lane2_ops->associate_indicator = lane2_assoc_ind;
  mpc = find_mpc_by_itfnum(priv->itfnum);
  if (mpc == ((void*)0)) {
   dprintk("allocating new mpc for %s\n", dev->name);
   mpc = alloc_mpc();
   if (mpc == ((void*)0)) {
    pr_info("no new mpc");
    break;
   }
  }
  mpc->dev_num = priv->itfnum;
  mpc->dev = dev;
  dev_hold(dev);
  dprintk("(%s) was initialized\n", dev->name);
  break;
 case 129:

  mpc = find_mpc_by_lec(dev);
  if (mpc == ((void*)0))
   break;
  dprintk("device (%s) was deallocated\n", dev->name);
  stop_mpc(mpc);
  dev_put(mpc->dev);
  mpc->dev = ((void*)0);
  break;
 case 128:

  mpc = find_mpc_by_lec(dev);
  if (mpc == ((void*)0))
   break;
  if (mpc->mpoad_vcc != ((void*)0))
   start_mpc(mpc, dev);
  break;
 case 133:




  mpc = find_mpc_by_lec(dev);
  if (mpc == ((void*)0))
   break;
  if (mpc->mpoad_vcc != ((void*)0))
   stop_mpc(mpc);
  break;
 case 131:
 case 136:
 case 134:
 case 135:
 case 132:
  break;
 default:
  break;
 }

 return NOTIFY_DONE;
}
