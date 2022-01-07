
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {int dummy; } ;
struct chnl_net {int conn_req; } ;


 int ASSERT_RTNL () ;
 int caif_netlink_parms (struct nlattr**,int *) ;
 struct chnl_net* netdev_priv (struct net_device*) ;
 int netdev_state_change (struct net_device*) ;

__attribute__((used)) static int ipcaif_changelink(struct net_device *dev, struct nlattr *tb[],
        struct nlattr *data[],
        struct netlink_ext_ack *extack)
{
 struct chnl_net *caifdev;
 ASSERT_RTNL();
 caifdev = netdev_priv(dev);
 caif_netlink_parms(data, &caifdev->conn_req);
 netdev_state_change(dev);
 return 0;
}
