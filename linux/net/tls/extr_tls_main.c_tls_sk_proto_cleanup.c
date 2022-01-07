
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int iv; int rec_seq; } ;
struct tls_context {scalar_t__ tx_conf; scalar_t__ rx_conf; TYPE_1__ tx; } ;
struct sock {int sk_write_pending; } ;


 scalar_t__ TLS_HW ;
 scalar_t__ TLS_SW ;
 int kfree (int ) ;
 int tls_device_free_resources_tx (struct sock*) ;
 int tls_device_offload_cleanup_rx (struct sock*) ;
 int tls_handle_open_record (struct sock*,int ) ;
 int tls_sw_release_resources_rx (struct sock*) ;
 int tls_sw_release_resources_tx (struct sock*) ;
 scalar_t__ unlikely (int ) ;
 int wait_on_pending_writer (struct sock*,long*) ;

__attribute__((used)) static void tls_sk_proto_cleanup(struct sock *sk,
     struct tls_context *ctx, long timeo)
{
 if (unlikely(sk->sk_write_pending) &&
     !wait_on_pending_writer(sk, &timeo))
  tls_handle_open_record(sk, 0);


 if (ctx->tx_conf == TLS_SW) {
  kfree(ctx->tx.rec_seq);
  kfree(ctx->tx.iv);
  tls_sw_release_resources_tx(sk);
 } else if (ctx->tx_conf == TLS_HW) {
  tls_device_free_resources_tx(sk);
 }

 if (ctx->rx_conf == TLS_SW)
  tls_sw_release_resources_rx(sk);
 else if (ctx->rx_conf == TLS_HW)
  tls_device_offload_cleanup_rx(sk);
}
