
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct net_device {int needs_free_netdev; int tx_queue_len; int mtu; int flags; int priv_destructor; int * netdev_ops; } ;
struct TYPE_7__ {int connection_id; } ;
struct TYPE_8__ {TYPE_2__ dgm; } ;
struct TYPE_9__ {TYPE_3__ u; } ;
struct TYPE_10__ {TYPE_4__ sockaddr; int priority; int link_selector; int protocol; } ;
struct TYPE_6__ {int ctrlcmd; int receive; } ;
struct chnl_net {int flowenabled; int netmgmt_wq; TYPE_5__ conn_req; struct net_device* netdev; TYPE_1__ chnl; } ;


 int CAIFPROTO_DATAGRAM ;
 int CAIF_LINK_HIGH_BANDW ;
 int CAIF_NET_DEFAULT_QUEUE_LEN ;
 int CAIF_PRIO_LOW ;
 int GPRS_PDP_MTU ;
 int IFF_NOARP ;
 int IFF_POINTOPOINT ;
 int UNDEF_CONNID ;
 int chnl_flowctrl_cb ;
 int chnl_net_destructor ;
 int chnl_recv_cb ;
 int init_waitqueue_head (int *) ;
 int netdev_ops ;
 struct chnl_net* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ipcaif_net_setup(struct net_device *dev)
{
 struct chnl_net *priv;
 dev->netdev_ops = &netdev_ops;
 dev->needs_free_netdev = 1;
 dev->priv_destructor = chnl_net_destructor;
 dev->flags |= IFF_NOARP;
 dev->flags |= IFF_POINTOPOINT;
 dev->mtu = GPRS_PDP_MTU;
 dev->tx_queue_len = CAIF_NET_DEFAULT_QUEUE_LEN;

 priv = netdev_priv(dev);
 priv->chnl.receive = chnl_recv_cb;
 priv->chnl.ctrlcmd = chnl_flowctrl_cb;
 priv->netdev = dev;
 priv->conn_req.protocol = CAIFPROTO_DATAGRAM;
 priv->conn_req.link_selector = CAIF_LINK_HIGH_BANDW;
 priv->conn_req.priority = CAIF_PRIO_LOW;

 priv->conn_req.sockaddr.u.dgm.connection_id = UNDEF_CONNID;
 priv->flowenabled = 0;

 init_waitqueue_head(&priv->netmgmt_wq);
}
