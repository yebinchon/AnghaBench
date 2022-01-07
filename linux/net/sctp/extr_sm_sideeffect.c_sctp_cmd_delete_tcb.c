
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_shutdown; } ;
struct sctp_cmd_seq {int dummy; } ;
struct TYPE_2__ {struct sock* sk; } ;
struct sctp_association {int temp; TYPE_1__ base; } ;


 int LISTENING ;
 scalar_t__ SHUTDOWN_MASK ;
 int TCP ;
 int sctp_association_free (struct sctp_association*) ;
 scalar_t__ sctp_sstate (struct sock*,int ) ;
 scalar_t__ sctp_style (struct sock*,int ) ;

__attribute__((used)) static void sctp_cmd_delete_tcb(struct sctp_cmd_seq *cmds,
    struct sctp_association *asoc)
{
 struct sock *sk = asoc->base.sk;





 if (sctp_style(sk, TCP) && sctp_sstate(sk, LISTENING) &&
     (!asoc->temp) && (sk->sk_shutdown != SHUTDOWN_MASK))
  return;

 sctp_association_free(asoc);
}
