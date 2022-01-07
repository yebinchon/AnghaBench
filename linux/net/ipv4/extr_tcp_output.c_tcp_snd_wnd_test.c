
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcp_sock {int dummy; } ;
struct sk_buff {unsigned int len; } ;
struct TYPE_2__ {scalar_t__ seq; scalar_t__ end_seq; } ;


 TYPE_1__* TCP_SKB_CB (struct sk_buff const*) ;
 int after (scalar_t__,int ) ;
 int tcp_wnd_end (struct tcp_sock const*) ;

__attribute__((used)) static bool tcp_snd_wnd_test(const struct tcp_sock *tp,
        const struct sk_buff *skb,
        unsigned int cur_mss)
{
 u32 end_seq = TCP_SKB_CB(skb)->end_seq;

 if (skb->len > cur_mss)
  end_seq = TCP_SKB_CB(skb)->seq + cur_mss;

 return !after(end_seq, tcp_wnd_end(tp));
}
