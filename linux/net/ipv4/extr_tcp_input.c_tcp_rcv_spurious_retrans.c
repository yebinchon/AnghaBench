
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_6__ {scalar_t__ seq; } ;
struct TYPE_5__ {TYPE_1__* duplicate_sack; } ;
struct TYPE_4__ {scalar_t__ start_seq; } ;


 TYPE_3__* TCP_SKB_CB (struct sk_buff const*) ;
 int sk_rethink_txhash (struct sock*) ;
 TYPE_2__* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_rcv_spurious_retrans(struct sock *sk, const struct sk_buff *skb)
{





 if (TCP_SKB_CB(skb)->seq == tcp_sk(sk)->duplicate_sack[0].start_seq)
  sk_rethink_txhash(sk);
}
