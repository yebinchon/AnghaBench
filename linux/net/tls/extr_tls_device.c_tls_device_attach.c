
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {scalar_t__ sk_destruct; int list; struct net_device* netdev; int refcount; } ;
struct sock {scalar_t__ sk_destruct; } ;
struct net_device {int dummy; } ;


 int dev_hold (struct net_device*) ;
 int list_add_tail (int *,int *) ;
 int refcount_set (int *,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int tls_device_list ;
 int tls_device_lock ;
 scalar_t__ tls_device_sk_destruct ;

__attribute__((used)) static void tls_device_attach(struct tls_context *ctx, struct sock *sk,
         struct net_device *netdev)
{
 if (sk->sk_destruct != tls_device_sk_destruct) {
  refcount_set(&ctx->refcount, 1);
  dev_hold(netdev);
  ctx->netdev = netdev;
  spin_lock_irq(&tls_device_lock);
  list_add_tail(&ctx->list, &tls_device_list);
  spin_unlock_irq(&tls_device_lock);

  ctx->sk_destruct = sk->sk_destruct;
  sk->sk_destruct = tls_device_sk_destruct;
 }
}
