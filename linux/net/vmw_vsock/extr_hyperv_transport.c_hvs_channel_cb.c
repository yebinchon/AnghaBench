
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {struct hvsock* trans; } ;
struct vmbus_channel {int outbound; } ;
struct sock {int (* sk_write_space ) (struct sock*) ;int (* sk_data_ready ) (struct sock*) ;} ;
struct hvsock {struct vmbus_channel* chan; } ;


 scalar_t__ hv_get_bytes_to_write (int *) ;
 scalar_t__ hvs_channel_readable (struct vmbus_channel*) ;
 int stub1 (struct sock*) ;
 int stub2 (struct sock*) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static void hvs_channel_cb(void *ctx)
{
 struct sock *sk = (struct sock *)ctx;
 struct vsock_sock *vsk = vsock_sk(sk);
 struct hvsock *hvs = vsk->trans;
 struct vmbus_channel *chan = hvs->chan;

 if (hvs_channel_readable(chan))
  sk->sk_data_ready(sk);

 if (hv_get_bytes_to_write(&chan->outbound) > 0)
  sk->sk_write_space(sk);
}
