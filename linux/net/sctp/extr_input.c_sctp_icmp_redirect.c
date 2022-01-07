
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sctp_transport {int dummy; } ;
struct dst_entry {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* redirect ) (struct dst_entry*,struct sock*,struct sk_buff*) ;} ;


 struct dst_entry* sctp_transport_dst_check (struct sctp_transport*) ;
 scalar_t__ sock_owned_by_user (struct sock*) ;
 int stub1 (struct dst_entry*,struct sock*,struct sk_buff*) ;

void sctp_icmp_redirect(struct sock *sk, struct sctp_transport *t,
   struct sk_buff *skb)
{
 struct dst_entry *dst;

 if (sock_owned_by_user(sk) || !t)
  return;
 dst = sctp_transport_dst_check(t);
 if (dst)
  dst->ops->redirect(dst, sk, skb);
}
