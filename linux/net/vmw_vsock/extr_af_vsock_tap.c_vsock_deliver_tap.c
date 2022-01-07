
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct sk_buff sk_buff ;


 int __vsock_deliver_tap (struct sk_buff*) ;
 int consume_skb (struct sk_buff*) ;
 scalar_t__ likely (int ) ;
 int list_empty (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int vsock_tap_all ;

void vsock_deliver_tap(struct sk_buff *build_skb(void *opaque), void *opaque)
{
 struct sk_buff *skb;

 rcu_read_lock();

 if (likely(list_empty(&vsock_tap_all)))
  goto out;

 skb = build_skb(opaque);
 if (skb) {
  __vsock_deliver_tap(skb);
  consume_skb(skb);
 }

out:
 rcu_read_unlock();
}
