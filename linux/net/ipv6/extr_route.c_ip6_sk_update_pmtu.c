
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int sk_bound_dev_if; int sk_v6_daddr; int sk_uid; int sk_mark; } ;
struct sk_buff {scalar_t__ dev; } ;
struct dst_entry {TYPE_1__* ops; int obsolete; } ;
typedef int __be32 ;
struct TYPE_4__ {int dst_cookie; } ;
struct TYPE_3__ {scalar_t__ (* check ) (struct dst_entry*,int ) ;} ;


 struct dst_entry* __sk_dst_get (struct sock*) ;
 int bh_lock_sock (struct sock*) ;
 int bh_unlock_sock (struct sock*) ;
 TYPE_2__* inet6_sk (struct sock*) ;
 int ip6_datagram_dst_update (struct sock*,int) ;
 int ip6_update_pmtu (struct sk_buff*,int ,int ,int,int ,int ) ;
 int ipv6_addr_v4mapped (int *) ;
 int l3mdev_master_ifindex (scalar_t__) ;
 int sock_net (struct sock*) ;
 int sock_owned_by_user (struct sock*) ;
 scalar_t__ stub1 (struct dst_entry*,int ) ;

void ip6_sk_update_pmtu(struct sk_buff *skb, struct sock *sk, __be32 mtu)
{
 int oif = sk->sk_bound_dev_if;
 struct dst_entry *dst;

 if (!oif && skb->dev)
  oif = l3mdev_master_ifindex(skb->dev);

 ip6_update_pmtu(skb, sock_net(sk), mtu, oif, sk->sk_mark, sk->sk_uid);

 dst = __sk_dst_get(sk);
 if (!dst || !dst->obsolete ||
     dst->ops->check(dst, inet6_sk(sk)->dst_cookie))
  return;

 bh_lock_sock(sk);
 if (!sock_owned_by_user(sk) && !ipv6_addr_v4mapped(&sk->sk_v6_daddr))
  ip6_datagram_dst_update(sk, 0);
 bh_unlock_sock(sk);
}
