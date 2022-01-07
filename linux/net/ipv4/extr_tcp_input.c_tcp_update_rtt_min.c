
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tcp_sock {int rtt_min; } ;
struct sock {int dummy; } ;
struct TYPE_3__ {scalar_t__ sysctl_tcp_min_rtt_wlen; } ;
struct TYPE_4__ {TYPE_1__ ipv4; } ;


 int const FLAG_ACK_MAYBE_DELAYED ;
 scalar_t__ HZ ;
 int jiffies_to_usecs (int) ;
 int minmax_running_min (int *,scalar_t__,int ,int ) ;
 TYPE_2__* sock_net (struct sock*) ;
 int tcp_jiffies32 ;
 scalar_t__ tcp_min_rtt (struct tcp_sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_update_rtt_min(struct sock *sk, u32 rtt_us, const int flag)
{
 u32 wlen = sock_net(sk)->ipv4.sysctl_tcp_min_rtt_wlen * HZ;
 struct tcp_sock *tp = tcp_sk(sk);

 if ((flag & FLAG_ACK_MAYBE_DELAYED) && rtt_us > tcp_min_rtt(tp)) {




  return;
 }
 minmax_running_min(&tp->rtt_min, wlen, tcp_jiffies32,
      rtt_us ? : jiffies_to_usecs(1));
}
