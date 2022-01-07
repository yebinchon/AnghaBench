
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktgen_net {scalar_t__ pktgen_exiting; } ;
struct notifier_block {int dummy; } ;
struct net_device {int name; } ;




 int NOTIFY_DONE ;
 int dev_net (struct net_device*) ;
 struct pktgen_net* net_generic (int ,int ) ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int pg_net_id ;
 int pktgen_change_name (struct pktgen_net*,struct net_device*) ;
 int pktgen_mark_device (struct pktgen_net*,int ) ;

__attribute__((used)) static int pktgen_device_event(struct notifier_block *unused,
          unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);
 struct pktgen_net *pn = net_generic(dev_net(dev), pg_net_id);

 if (pn->pktgen_exiting)
  return NOTIFY_DONE;





 switch (event) {
 case 129:
  pktgen_change_name(pn, dev);
  break;

 case 128:
  pktgen_mark_device(pn, dev->name);
  break;
 }

 return NOTIFY_DONE;
}
