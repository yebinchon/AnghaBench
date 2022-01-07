
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcp_sock {int ecn_flags; int rcv_nxt; } ;
struct sock {scalar_t__ sk_state; } ;
struct dctcp {scalar_t__ ce_state; scalar_t__ loss_cwnd; int dctcp_alpha; int prior_rcv_nxt; } ;
struct TYPE_2__ {int * icsk_ca_ops; } ;


 int DCTCP_MAX_ALPHA ;
 int INET_ECN_dontxmit (struct sock*) ;
 scalar_t__ TCP_CLOSE ;
 int TCP_ECN_OK ;
 scalar_t__ TCP_LISTEN ;
 int dctcp_alpha_on_init ;
 int dctcp_reno ;
 int dctcp_reset (struct tcp_sock const*,struct dctcp*) ;
 TYPE_1__* inet_csk (struct sock*) ;
 struct dctcp* inet_csk_ca (struct sock*) ;
 int min (int ,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void dctcp_init(struct sock *sk)
{
 const struct tcp_sock *tp = tcp_sk(sk);

 if ((tp->ecn_flags & TCP_ECN_OK) ||
     (sk->sk_state == TCP_LISTEN ||
      sk->sk_state == TCP_CLOSE)) {
  struct dctcp *ca = inet_csk_ca(sk);

  ca->prior_rcv_nxt = tp->rcv_nxt;

  ca->dctcp_alpha = min(dctcp_alpha_on_init, DCTCP_MAX_ALPHA);

  ca->loss_cwnd = 0;
  ca->ce_state = 0;

  dctcp_reset(tp, ca);
  return;
 }




 inet_csk(sk)->icsk_ca_ops = &dctcp_reno;
 INET_ECN_dontxmit(sk);
}
