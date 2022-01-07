
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcp_request_sock_ops {int (* send_synack ) (struct sock const*,int *,struct flowi*,struct request_sock*,int *,int ) ;} ;
struct sock {int dummy; } ;
struct request_sock {int dummy; } ;
struct flowi {int dummy; } ;
struct TYPE_4__ {int txhash; struct tcp_request_sock_ops* af_specific; } ;
struct TYPE_3__ {int total_retrans; } ;


 int LINUX_MIB_TCPSYNRETRANS ;
 int TCP_MIB_RETRANSSEGS ;
 int TCP_SYNACK_NORMAL ;
 int __NET_INC_STATS (int ,int ) ;
 int __TCP_INC_STATS (int ,int ) ;
 int net_tx_rndhash () ;
 int sock_net (struct sock const*) ;
 int stub1 (struct sock const*,int *,struct flowi*,struct request_sock*,int *,int ) ;
 int tcp_passive_fastopen (struct sock const*) ;
 TYPE_2__* tcp_rsk (struct request_sock*) ;
 TYPE_1__* tcp_sk (struct sock const*) ;
 int trace_tcp_retransmit_synack (struct sock const*,struct request_sock*) ;
 scalar_t__ unlikely (int ) ;

int tcp_rtx_synack(const struct sock *sk, struct request_sock *req)
{
 const struct tcp_request_sock_ops *af_ops = tcp_rsk(req)->af_specific;
 struct flowi fl;
 int res;

 tcp_rsk(req)->txhash = net_tx_rndhash();
 res = af_ops->send_synack(sk, ((void*)0), &fl, req, ((void*)0), TCP_SYNACK_NORMAL);
 if (!res) {
  __TCP_INC_STATS(sock_net(sk), TCP_MIB_RETRANSSEGS);
  __NET_INC_STATS(sock_net(sk), LINUX_MIB_TCPSYNRETRANS);
  if (unlikely(tcp_passive_fastopen(sk)))
   tcp_sk(sk)->total_retrans++;
  trace_tcp_retransmit_synack(sk, req);
 }
 return res;
}
