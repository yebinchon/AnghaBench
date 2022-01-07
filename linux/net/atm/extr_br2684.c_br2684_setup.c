
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hard_header_len; int * netdev_ops; } ;
struct br2684_dev {int brvccs; struct net_device* net_dev; } ;
typedef int llc_oui_pid_pad ;


 struct br2684_dev* BRPRIV (struct net_device*) ;
 int INIT_LIST_HEAD (int *) ;
 int br2684_netdev_ops ;
 int ether_setup (struct net_device*) ;

__attribute__((used)) static void br2684_setup(struct net_device *netdev)
{
 struct br2684_dev *brdev = BRPRIV(netdev);

 ether_setup(netdev);
 netdev->hard_header_len += sizeof(llc_oui_pid_pad);
 brdev->net_dev = netdev;

 netdev->netdev_ops = &br2684_netdev_ops;

 INIT_LIST_HEAD(&brdev->brvccs);
}
