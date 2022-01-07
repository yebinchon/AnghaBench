
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_4__ {int * rec_seq; } ;
struct tls_context {int flags; struct net_device* netdev; TYPE_1__ tx; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct net_device {TYPE_2__* tlsdev_ops; } ;
struct TYPE_6__ {int eor; } ;
struct TYPE_5__ {int (* tls_dev_resync ) (struct net_device*,struct sock*,int ,int *,int ) ;} ;


 TYPE_3__* TCP_SKB_CB (struct sk_buff*) ;
 int TLS_OFFLOAD_CTX_DIR_TX ;
 int TLS_TX_SYNC_SCHED ;
 int clear_bit_unlock (int ,int *) ;
 int device_offload_lock ;
 int down_read (int *) ;
 int stub1 (struct net_device*,struct sock*,int ,int *,int ) ;
 struct sk_buff* tcp_write_queue_tail (struct sock*) ;
 int up_read (int *) ;

__attribute__((used)) static void tls_device_resync_tx(struct sock *sk, struct tls_context *tls_ctx,
     u32 seq)
{
 struct net_device *netdev;
 struct sk_buff *skb;
 int err = 0;
 u8 *rcd_sn;

 skb = tcp_write_queue_tail(sk);
 if (skb)
  TCP_SKB_CB(skb)->eor = 1;

 rcd_sn = tls_ctx->tx.rec_seq;

 down_read(&device_offload_lock);
 netdev = tls_ctx->netdev;
 if (netdev)
  err = netdev->tlsdev_ops->tls_dev_resync(netdev, sk, seq,
        rcd_sn,
        TLS_OFFLOAD_CTX_DIR_TX);
 up_read(&device_offload_lock);
 if (err)
  return;

 clear_bit_unlock(TLS_TX_SYNC_SCHED, &tls_ctx->flags);
}
