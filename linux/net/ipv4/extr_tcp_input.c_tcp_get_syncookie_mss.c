
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct tcphdr {int dummy; } ;
struct TYPE_5__ {int user_mss; } ;
struct tcp_sock {TYPE_1__ rx_opt; } ;
struct tcp_request_sock_ops {scalar_t__ mss_clamp; } ;
struct sock {int dummy; } ;
struct request_sock_ops {int slab_name; } ;
struct TYPE_6__ {int sysctl_tcp_syncookies; } ;
struct TYPE_7__ {TYPE_2__ ipv4; } ;


 int LINUX_MIB_LISTENOVERFLOWS ;
 int NET_INC_STATS (TYPE_3__*,int ) ;
 int inet_csk_reqsk_queue_is_full (struct sock*) ;
 scalar_t__ sk_acceptq_is_full (struct sock*) ;
 TYPE_3__* sock_net (struct sock*) ;
 scalar_t__ tcp_parse_mss_option (struct tcphdr*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_syn_flood_action (struct sock*,int ) ;

u16 tcp_get_syncookie_mss(struct request_sock_ops *rsk_ops,
     const struct tcp_request_sock_ops *af_ops,
     struct sock *sk, struct tcphdr *th)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u16 mss;

 if (sock_net(sk)->ipv4.sysctl_tcp_syncookies != 2 &&
     !inet_csk_reqsk_queue_is_full(sk))
  return 0;

 if (!tcp_syn_flood_action(sk, rsk_ops->slab_name))
  return 0;

 if (sk_acceptq_is_full(sk)) {
  NET_INC_STATS(sock_net(sk), LINUX_MIB_LISTENOVERFLOWS);
  return 0;
 }

 mss = tcp_parse_mss_option(th, tp->rx_opt.user_mss);
 if (!mss)
  mss = af_ops->mss_clamp;

 return mss;
}
