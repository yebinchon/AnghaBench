
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct tcp_sock {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {int len; } ;
struct TYPE_2__ {unsigned int seq; } ;


 TYPE_1__* TCP_SKB_CB (struct sk_buff const*) ;
 scalar_t__ likely (int) ;
 unsigned int min (int ,unsigned int) ;
 scalar_t__ tcp_nagle_check (int,struct tcp_sock const*,int) ;
 struct tcp_sock* tcp_sk (struct sock const*) ;
 unsigned int tcp_wnd_end (struct tcp_sock const*) ;
 struct sk_buff const* tcp_write_queue_tail (struct sock const*) ;

__attribute__((used)) static unsigned int tcp_mss_split_point(const struct sock *sk,
     const struct sk_buff *skb,
     unsigned int mss_now,
     unsigned int max_segs,
     int nonagle)
{
 const struct tcp_sock *tp = tcp_sk(sk);
 u32 partial, needed, window, max_len;

 window = tcp_wnd_end(tp) - TCP_SKB_CB(skb)->seq;
 max_len = mss_now * max_segs;

 if (likely(max_len <= window && skb != tcp_write_queue_tail(sk)))
  return max_len;

 needed = min(skb->len, window);

 if (max_len <= needed)
  return max_len;

 partial = needed % mss_now;




 if (tcp_nagle_check(partial != 0, tp, nonagle))
  return needed - partial;

 return needed;
}
