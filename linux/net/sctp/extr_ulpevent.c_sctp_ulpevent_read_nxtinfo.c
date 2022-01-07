
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sctp_ulpevent {int dummy; } ;
struct msghdr {int dummy; } ;


 int MSG_PEEK ;
 int __sctp_ulpevent_read_nxtinfo (int ,struct msghdr*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int sctp_skb2event (struct sk_buff*) ;
 struct sk_buff* sctp_skb_recv_datagram (struct sock*,int ,int,int*) ;

void sctp_ulpevent_read_nxtinfo(const struct sctp_ulpevent *event,
    struct msghdr *msghdr,
    struct sock *sk)
{
 struct sk_buff *skb;
 int err;

 skb = sctp_skb_recv_datagram(sk, MSG_PEEK, 1, &err);
 if (skb != ((void*)0)) {
  __sctp_ulpevent_read_nxtinfo(sctp_skb2event(skb),
          msghdr, skb);

  kfree_skb(skb);
 }
}
