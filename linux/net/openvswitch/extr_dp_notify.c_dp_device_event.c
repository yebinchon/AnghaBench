
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vport {int dummy; } ;
struct ovs_net {int dp_notify_work; } ;
struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;


 unsigned long NETDEV_UNREGISTER ;
 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 struct ovs_net* net_generic (int ,int ) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int ovs_is_internal_dev (struct net_device*) ;
 int ovs_net_id ;
 int ovs_netdev_detach_dev (struct vport*) ;
 struct vport* ovs_netdev_get_vport (struct net_device*) ;
 int queue_work (int ,int *) ;
 int system_wq ;

__attribute__((used)) static int dp_device_event(struct notifier_block *unused, unsigned long event,
      void *ptr)
{
 struct ovs_net *ovs_net;
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct vport *vport = ((void*)0);

 if (!ovs_is_internal_dev(dev))
  vport = ovs_netdev_get_vport(dev);

 if (!vport)
  return NOTIFY_DONE;

 if (event == NETDEV_UNREGISTER) {

  ovs_netdev_detach_dev(vport);


  ovs_net = net_generic(dev_net(dev), ovs_net_id);
  queue_work(system_wq, &ovs_net->dp_notify_work);
 }

 return NOTIFY_DONE;
}
