
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dctcp {int ce_state; int prior_rcv_nxt; } ;
typedef enum tcp_ca_event { ____Placeholder_tcp_ca_event } tcp_ca_event ;





 int dctcp_ece_ack_update (struct sock*,int,int *,int *) ;
 int dctcp_react_to_loss (struct sock*) ;
 struct dctcp* inet_csk_ca (struct sock*) ;

__attribute__((used)) static void dctcp_cwnd_event(struct sock *sk, enum tcp_ca_event ev)
{
 struct dctcp *ca = inet_csk_ca(sk);

 switch (ev) {
 case 130:
 case 129:
  dctcp_ece_ack_update(sk, ev, &ca->prior_rcv_nxt, &ca->ce_state);
  break;
 case 128:
  dctcp_react_to_loss(sk);
  break;
 default:

  break;
 }
}
