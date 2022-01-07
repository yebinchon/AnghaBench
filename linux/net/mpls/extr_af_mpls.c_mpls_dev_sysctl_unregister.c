
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct net {int dummy; } ;
struct mpls_dev {TYPE_1__* sysctl; } ;
struct ctl_table {int dummy; } ;
struct TYPE_2__ {struct ctl_table* ctl_table_arg; } ;


 int RTM_DELNETCONF ;
 struct net* dev_net (struct net_device*) ;
 int kfree (struct ctl_table*) ;
 int mpls_netconf_notify_devconf (struct net*,int ,int ,struct mpls_dev*) ;
 int unregister_net_sysctl_table (TYPE_1__*) ;

__attribute__((used)) static void mpls_dev_sysctl_unregister(struct net_device *dev,
           struct mpls_dev *mdev)
{
 struct net *net = dev_net(dev);
 struct ctl_table *table;

 table = mdev->sysctl->ctl_table_arg;
 unregister_net_sysctl_table(mdev->sysctl);
 kfree(table);

 mpls_netconf_notify_devconf(net, RTM_DELNETCONF, 0, mdev);
}
