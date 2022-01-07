
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct tls_context {int flags; int netdev; } ;
struct sock {int dummy; } ;
struct net_device {TYPE_1__* tlsdev_ops; } ;
struct TYPE_2__ {int (* tls_dev_resync ) (struct net_device*,struct sock*,int ,int *,int ) ;} ;


 struct net_device* READ_ONCE (int ) ;
 int TLS_OFFLOAD_CTX_DIR_RX ;
 int TLS_RX_SYNC_RUNNING ;
 scalar_t__ WARN_ON (int ) ;
 int clear_bit_unlock (int ,int *) ;
 int stub1 (struct net_device*,struct sock*,int ,int *,int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void tls_device_resync_rx(struct tls_context *tls_ctx,
     struct sock *sk, u32 seq, u8 *rcd_sn)
{
 struct net_device *netdev;

 if (WARN_ON(test_and_set_bit(TLS_RX_SYNC_RUNNING, &tls_ctx->flags)))
  return;
 netdev = READ_ONCE(tls_ctx->netdev);
 if (netdev)
  netdev->tlsdev_ops->tls_dev_resync(netdev, sk, seq, rcd_sn,
         TLS_OFFLOAD_CTX_DIR_RX);
 clear_bit_unlock(TLS_RX_SYNC_RUNNING, &tls_ctx->flags);
}
