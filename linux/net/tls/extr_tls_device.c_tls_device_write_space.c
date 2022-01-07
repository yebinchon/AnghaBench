
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int dummy; } ;
struct sock {int sk_allocation; int sk_write_pending; } ;
typedef int gfp_t ;


 int GFP_ATOMIC ;
 int MSG_DONTWAIT ;
 int MSG_NOSIGNAL ;
 int MSG_SENDPAGE_DECRYPTED ;
 int WARN_ON_ONCE (int ) ;
 scalar_t__ tls_is_partially_sent_record (struct tls_context*) ;
 int tls_push_partial_record (struct sock*,struct tls_context*,int) ;

void tls_device_write_space(struct sock *sk, struct tls_context *ctx)
{
 if (tls_is_partially_sent_record(ctx)) {
  gfp_t sk_allocation = sk->sk_allocation;

  WARN_ON_ONCE(sk->sk_write_pending);

  sk->sk_allocation = GFP_ATOMIC;
  tls_push_partial_record(sk, ctx,
     MSG_DONTWAIT | MSG_NOSIGNAL |
     MSG_SENDPAGE_DECRYPTED);
  sk->sk_allocation = sk_allocation;
 }
}
