
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int seq; } ;


 TYPE_1__* TCP_SKB_CB (struct sk_buff*) ;
 scalar_t__ after (int ,int ) ;
 struct sk_buff* tcp_sacktag_bsearch (struct sock*,int ) ;

__attribute__((used)) static struct sk_buff *tcp_sacktag_skip(struct sk_buff *skb, struct sock *sk,
     u32 skip_to_seq)
{
 if (skb && after(TCP_SKB_CB(skb)->seq, skip_to_seq))
  return skb;

 return tcp_sacktag_bsearch(sk, skip_to_seq);
}
