
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; int broadcast; int priv_flags; int tx_queue_len; int addr_len; void* max_mtu; int min_mtu; void* mtu; void* min_header_len; void* hard_header_len; int type; int * header_ops; } ;


 int ARPHRD_ETHER ;
 int DEFAULT_TX_QUEUE_LEN ;
 int ETH_ALEN ;
 void* ETH_DATA_LEN ;
 void* ETH_HLEN ;
 int ETH_MIN_MTU ;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_TX_SKB_SHARING ;
 int eth_broadcast_addr (int ) ;
 int eth_header_ops ;

void ether_setup(struct net_device *dev)
{
 dev->header_ops = &eth_header_ops;
 dev->type = ARPHRD_ETHER;
 dev->hard_header_len = ETH_HLEN;
 dev->min_header_len = ETH_HLEN;
 dev->mtu = ETH_DATA_LEN;
 dev->min_mtu = ETH_MIN_MTU;
 dev->max_mtu = ETH_DATA_LEN;
 dev->addr_len = ETH_ALEN;
 dev->tx_queue_len = DEFAULT_TX_QUEUE_LEN;
 dev->flags = IFF_BROADCAST|IFF_MULTICAST;
 dev->priv_flags |= IFF_TX_SKB_SHARING;

 eth_broadcast_addr(dev->broadcast);

}
