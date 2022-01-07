
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct packet_sock {int pg_vec_lock; int tp_version; int tx_ring; int rx_ring; } ;


 int PACKET_DIAG_RX_RING ;
 int PACKET_DIAG_TX_RING ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pdiag_put_ring (int *,int ,int ,struct sk_buff*) ;

__attribute__((used)) static int pdiag_put_rings_cfg(struct packet_sock *po, struct sk_buff *skb)
{
 int ret;

 mutex_lock(&po->pg_vec_lock);
 ret = pdiag_put_ring(&po->rx_ring, po->tp_version,
   PACKET_DIAG_RX_RING, skb);
 if (!ret)
  ret = pdiag_put_ring(&po->tx_ring, po->tp_version,
    PACKET_DIAG_TX_RING, skb);
 mutex_unlock(&po->pg_vec_lock);

 return ret;
}
