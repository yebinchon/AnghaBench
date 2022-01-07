
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct net_device {scalar_t__ ifindex; } ;
struct net {int dummy; } ;
struct TYPE_5__ {scalar_t__ connection_id; } ;
struct TYPE_6__ {TYPE_1__ dgm; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {int protocol; TYPE_3__ sockaddr; } ;
struct chnl_net {TYPE_4__ conn_req; int list_field; } ;


 int ASSERT_RTNL () ;
 int CAIFPROTO_DATAGRAM_LOOP ;
 scalar_t__ UNDEF_CONNID ;
 int caif_netlink_parms (struct nlattr**,TYPE_4__*) ;
 int chnl_net_list ;
 int list_add (int *,int *) ;
 struct chnl_net* netdev_priv (struct net_device*) ;
 int pr_warn (char*) ;
 int register_netdevice (struct net_device*) ;

__attribute__((used)) static int ipcaif_newlink(struct net *src_net, struct net_device *dev,
     struct nlattr *tb[], struct nlattr *data[],
     struct netlink_ext_ack *extack)
{
 int ret;
 struct chnl_net *caifdev;
 ASSERT_RTNL();
 caifdev = netdev_priv(dev);
 caif_netlink_parms(data, &caifdev->conn_req);

 ret = register_netdevice(dev);
 if (ret)
  pr_warn("device rtml registration failed\n");
 else
  list_add(&caifdev->list_field, &chnl_net_list);


 if (caifdev->conn_req.sockaddr.u.dgm.connection_id == UNDEF_CONNID) {
  caifdev->conn_req.sockaddr.u.dgm.connection_id = dev->ifindex;
  caifdev->conn_req.protocol = CAIFPROTO_DATAGRAM_LOOP;
 }
 return ret;
}
