
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_dev_priv {scalar_t__ netpoll; } ;
struct sk_buff {int dummy; } ;
typedef int netdev_tx_t ;


 int BUG () ;
 int NETDEV_TX_OK ;
 int netpoll_send_skb (scalar_t__,struct sk_buff*) ;

__attribute__((used)) static inline netdev_tx_t vlan_netpoll_send_skb(struct vlan_dev_priv *vlan, struct sk_buff *skb)
{




 BUG();

 return NETDEV_TX_OK;
}
