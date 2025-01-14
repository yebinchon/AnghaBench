
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int priv_flags; } ;
struct net {int dummy; } ;
struct brnf_net {int enabled; } ;


 int ARRAY_SIZE (int ) ;
 int ASSERT_RTNL () ;
 int IFF_EBRIDGE ;
 unsigned long NETDEV_REGISTER ;
 int NOTIFY_BAD ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int br_nf_ops ;
 int brnf_net_id ;
 struct net* dev_net (struct net_device*) ;
 struct brnf_net* net_generic (struct net*,int ) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int nf_register_net_hooks (struct net*,int ,int ) ;

__attribute__((used)) static int brnf_device_event(struct notifier_block *unused, unsigned long event,
        void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct brnf_net *brnet;
 struct net *net;
 int ret;

 if (event != NETDEV_REGISTER || !(dev->priv_flags & IFF_EBRIDGE))
  return NOTIFY_DONE;

 ASSERT_RTNL();

 net = dev_net(dev);
 brnet = net_generic(net, brnf_net_id);
 if (brnet->enabled)
  return NOTIFY_OK;

 ret = nf_register_net_hooks(net, br_nf_ops, ARRAY_SIZE(br_nf_ops));
 if (ret)
  return NOTIFY_BAD;

 brnet->enabled = 1;
 return NOTIFY_OK;
}
