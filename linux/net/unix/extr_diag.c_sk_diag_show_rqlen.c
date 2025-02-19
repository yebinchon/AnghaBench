
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u32 ;
struct unix_diag_rqlen {void* udiag_wqueue; void* udiag_rqueue; } ;
struct TYPE_2__ {void* qlen; } ;
struct sock {scalar_t__ sk_state; void* sk_max_ack_backlog; TYPE_1__ sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
typedef int rql ;


 scalar_t__ TCP_LISTEN ;
 int UNIX_DIAG_RQLEN ;
 int nla_put (struct sk_buff*,int ,int,struct unix_diag_rqlen*) ;
 scalar_t__ unix_inq_len (struct sock*) ;
 scalar_t__ unix_outq_len (struct sock*) ;

__attribute__((used)) static int sk_diag_show_rqlen(struct sock *sk, struct sk_buff *nlskb)
{
 struct unix_diag_rqlen rql;

 if (sk->sk_state == TCP_LISTEN) {
  rql.udiag_rqueue = sk->sk_receive_queue.qlen;
  rql.udiag_wqueue = sk->sk_max_ack_backlog;
 } else {
  rql.udiag_rqueue = (u32) unix_inq_len(sk);
  rql.udiag_wqueue = (u32) unix_outq_len(sk);
 }

 return nla_put(nlskb, UNIX_DIAG_RQLEN, sizeof(rql), &rql);
}
