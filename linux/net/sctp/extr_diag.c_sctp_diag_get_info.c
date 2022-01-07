
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int sk_max_ack_backlog; int sk_ack_backlog; } ;
struct sctp_infox {scalar_t__ sctpinfo; TYPE_1__* asoc; } ;
struct inet_diag_msg {int idiag_wqueue; int idiag_rqueue; } ;
struct TYPE_2__ {int sndbuf_used; int rmem_alloc; } ;


 int atomic_read (int *) ;
 int sctp_get_sctp_info (struct sock*,TYPE_1__*,scalar_t__) ;

__attribute__((used)) static void sctp_diag_get_info(struct sock *sk, struct inet_diag_msg *r,
          void *info)
{
 struct sctp_infox *infox = (struct sctp_infox *)info;

 if (infox->asoc) {
  r->idiag_rqueue = atomic_read(&infox->asoc->rmem_alloc);
  r->idiag_wqueue = infox->asoc->sndbuf_used;
 } else {
  r->idiag_rqueue = sk->sk_ack_backlog;
  r->idiag_wqueue = sk->sk_max_ack_backlog;
 }
 if (infox->sctpinfo)
  sctp_get_sctp_info(sk, infox->asoc, infox->sctpinfo);
}
