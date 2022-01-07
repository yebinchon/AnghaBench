
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
struct net_device {int dummy; } ;


 int GFP_KERNEL ;
 int NOTIFY_DONE ;
 int RTM_NEWLINK ;
 struct net_device* netdev_notifier_info_to_dev (void*) ;
 int rtmsg_ifinfo_event (int ,struct net_device*,int ,int ,int ,int *,int ) ;
 int rtnl_get_event (unsigned long) ;

__attribute__((used)) static int rtnetlink_event(struct notifier_block *this, unsigned long event, void *ptr)
{
 struct net_device *dev = netdev_notifier_info_to_dev(ptr);

 switch (event) {
 case 129:
 case 136:
 case 139:
 case 135:
 case 132:
 case 140:
 case 130:
 case 131:
 case 134:
 case 128:
 case 138:
 case 137:
 case 133:
  rtmsg_ifinfo_event(RTM_NEWLINK, dev, 0, rtnl_get_event(event),
       GFP_KERNEL, ((void*)0), 0);
  break;
 default:
  break;
 }
 return NOTIFY_DONE;
}
