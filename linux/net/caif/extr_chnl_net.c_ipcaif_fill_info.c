
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_5__ {int connection_id; } ;
struct TYPE_6__ {TYPE_1__ dgm; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {scalar_t__ protocol; TYPE_3__ sockaddr; } ;
struct chnl_net {TYPE_4__ conn_req; } ;


 scalar_t__ CAIFPROTO_DATAGRAM_LOOP ;
 int EMSGSIZE ;
 int IFLA_CAIF_IPV4_CONNID ;
 int IFLA_CAIF_IPV6_CONNID ;
 int IFLA_CAIF_LOOPBACK ;
 struct chnl_net* netdev_priv (struct net_device const*) ;
 scalar_t__ nla_put_u32 (struct sk_buff*,int ,int ) ;
 scalar_t__ nla_put_u8 (struct sk_buff*,int ,int) ;

__attribute__((used)) static int ipcaif_fill_info(struct sk_buff *skb, const struct net_device *dev)
{
 struct chnl_net *priv;
 u8 loop;
 priv = netdev_priv(dev);
 if (nla_put_u32(skb, IFLA_CAIF_IPV4_CONNID,
   priv->conn_req.sockaddr.u.dgm.connection_id) ||
     nla_put_u32(skb, IFLA_CAIF_IPV6_CONNID,
   priv->conn_req.sockaddr.u.dgm.connection_id))
  goto nla_put_failure;
 loop = priv->conn_req.protocol == CAIFPROTO_DATAGRAM_LOOP;
 if (nla_put_u8(skb, IFLA_CAIF_LOOPBACK, loop))
  goto nla_put_failure;
 return 0;
nla_put_failure:
 return -EMSGSIZE;

}
