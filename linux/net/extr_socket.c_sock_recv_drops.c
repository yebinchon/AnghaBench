
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {scalar_t__ dropcount; } ;


 int SOCK_RXQ_OVFL ;
 TYPE_1__* SOCK_SKB_CB (struct sk_buff*) ;
 int SOL_SOCKET ;
 int SO_RXQ_OVFL ;
 int put_cmsg (struct msghdr*,int ,int ,int,scalar_t__*) ;
 scalar_t__ sock_flag (struct sock*,int ) ;

__attribute__((used)) static inline void sock_recv_drops(struct msghdr *msg, struct sock *sk,
       struct sk_buff *skb)
{
 if (sock_flag(sk, SOCK_RXQ_OVFL) && skb && SOCK_SKB_CB(skb)->dropcount)
  put_cmsg(msg, SOL_SOCKET, SO_RXQ_OVFL,
   sizeof(__u32), &SOCK_SKB_CB(skb)->dropcount);
}
