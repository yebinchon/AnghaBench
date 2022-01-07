
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sacktag_state {int dummy; } ;
struct tcp_sack_block {int end_seq; int start_seq; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ before (int ,int ) ;
 struct sk_buff* tcp_sacktag_skip (struct sk_buff*,struct sock*,int ) ;
 struct sk_buff* tcp_sacktag_walk (struct sk_buff*,struct sock*,int *,struct tcp_sacktag_state*,int ,int ,int) ;

__attribute__((used)) static struct sk_buff *tcp_maybe_skipping_dsack(struct sk_buff *skb,
      struct sock *sk,
      struct tcp_sack_block *next_dup,
      struct tcp_sacktag_state *state,
      u32 skip_to_seq)
{
 if (!next_dup)
  return skb;

 if (before(next_dup->start_seq, skip_to_seq)) {
  skb = tcp_sacktag_skip(skb, sk, next_dup->start_seq);
  skb = tcp_sacktag_walk(skb, sk, ((void*)0), state,
           next_dup->start_seq, next_dup->end_seq,
           1);
 }

 return skb;
}
