
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int reo_wnd_steps; int reo_wnd_persist; int last_delivered; scalar_t__ dsack_seen; } ;
struct tcp_sock {TYPE_2__ rack; int delivered; } ;
struct sock {int dummy; } ;
struct rate_sample {int prior_delivered; } ;
struct TYPE_4__ {int sysctl_tcp_recovery; } ;
struct TYPE_6__ {TYPE_1__ ipv4; } ;


 int TCP_RACK_RECOVERY_THRESH ;
 int TCP_RACK_STATIC_REO_WND ;
 scalar_t__ before (int ,int ) ;
 int min_t (int ,int,int) ;
 TYPE_3__* sock_net (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int u32 ;

void tcp_rack_update_reo_wnd(struct sock *sk, struct rate_sample *rs)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (sock_net(sk)->ipv4.sysctl_tcp_recovery & TCP_RACK_STATIC_REO_WND ||
     !rs->prior_delivered)
  return;


 if (before(rs->prior_delivered, tp->rack.last_delivered))
  tp->rack.dsack_seen = 0;


 if (tp->rack.dsack_seen) {
  tp->rack.reo_wnd_steps = min_t(u32, 0xFF,
            tp->rack.reo_wnd_steps + 1);
  tp->rack.dsack_seen = 0;
  tp->rack.last_delivered = tp->delivered;
  tp->rack.reo_wnd_persist = TCP_RACK_RECOVERY_THRESH;
 } else if (!tp->rack.reo_wnd_persist) {
  tp->rack.reo_wnd_steps = 1;
 }
}
