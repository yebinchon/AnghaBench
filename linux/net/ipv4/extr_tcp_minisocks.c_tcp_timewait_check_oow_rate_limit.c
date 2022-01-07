
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_timewait_sock {int tw_last_oow_ack_time; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct inet_timewait_sock {int dummy; } ;
typedef enum tcp_tw_status { ____Placeholder_tcp_tw_status } tcp_tw_status ;


 int TCP_TW_ACK ;
 int TCP_TW_SUCCESS ;
 int inet_twsk_put (struct inet_timewait_sock*) ;
 int tcp_oow_rate_limited (int ,struct sk_buff const*,int,int *) ;
 struct tcp_timewait_sock* tcp_twsk (struct sock*) ;
 int twsk_net (struct inet_timewait_sock*) ;

__attribute__((used)) static enum tcp_tw_status
tcp_timewait_check_oow_rate_limit(struct inet_timewait_sock *tw,
      const struct sk_buff *skb, int mib_idx)
{
 struct tcp_timewait_sock *tcptw = tcp_twsk((struct sock *)tw);

 if (!tcp_oow_rate_limited(twsk_net(tw), skb, mib_idx,
      &tcptw->tw_last_oow_ack_time)) {



  return TCP_TW_ACK;
 }


 inet_twsk_put(tw);
 return TCP_TW_SUCCESS;
}
