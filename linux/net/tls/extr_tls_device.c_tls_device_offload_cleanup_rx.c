
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tls_context {scalar_t__ tx_conf; struct net_device* netdev; } ;
struct sock {int dummy; } ;
struct net_device {TYPE_1__* tlsdev_ops; } ;
struct TYPE_2__ {int (* tls_dev_del ) (struct net_device*,struct tls_context*,int ) ;} ;


 scalar_t__ TLS_HW ;
 int TLS_OFFLOAD_CTX_DIR_RX ;
 int dev_put (struct net_device*) ;
 int device_offload_lock ;
 int down_read (int *) ;
 int stub1 (struct net_device*,struct tls_context*,int ) ;
 struct tls_context* tls_get_ctx (struct sock*) ;
 int tls_sw_release_resources_rx (struct sock*) ;
 int up_read (int *) ;

void tls_device_offload_cleanup_rx(struct sock *sk)
{
 struct tls_context *tls_ctx = tls_get_ctx(sk);
 struct net_device *netdev;

 down_read(&device_offload_lock);
 netdev = tls_ctx->netdev;
 if (!netdev)
  goto out;

 netdev->tlsdev_ops->tls_dev_del(netdev, tls_ctx,
     TLS_OFFLOAD_CTX_DIR_RX);

 if (tls_ctx->tx_conf != TLS_HW) {
  dev_put(netdev);
  tls_ctx->netdev = ((void*)0);
 }
out:
 up_read(&device_offload_lock);
 tls_sw_release_resources_rx(sk);
}
