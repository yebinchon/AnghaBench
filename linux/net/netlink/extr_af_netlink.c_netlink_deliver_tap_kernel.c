
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 int netlink_deliver_tap (int ,struct sk_buff*) ;
 scalar_t__ netlink_is_kernel (struct sock*) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static void netlink_deliver_tap_kernel(struct sock *dst, struct sock *src,
           struct sk_buff *skb)
{
 if (!(netlink_is_kernel(dst) && netlink_is_kernel(src)))
  netlink_deliver_tap(sock_net(dst), skb);
}
