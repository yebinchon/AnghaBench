
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_ack_backlog; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_endpoint {int asocs; TYPE_1__ base; } ;
struct sctp_association {int asocs; scalar_t__ temp; } ;


 int LISTENING ;
 int TCP ;
 int list_add_tail (int *,int *) ;
 scalar_t__ sctp_sstate (struct sock*,int ) ;
 scalar_t__ sctp_style (struct sock*,int ) ;

void sctp_endpoint_add_asoc(struct sctp_endpoint *ep,
       struct sctp_association *asoc)
{
 struct sock *sk = ep->base.sk;





 if (asoc->temp)
  return;


 list_add_tail(&asoc->asocs, &ep->asocs);


 if (sctp_style(sk, TCP) && sctp_sstate(sk, LISTENING))
  sk->sk_ack_backlog++;
}
