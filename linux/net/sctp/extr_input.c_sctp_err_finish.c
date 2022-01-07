
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct sctp_transport {int dummy; } ;


 int bh_unlock_sock (struct sock*) ;
 int sctp_transport_put (struct sctp_transport*) ;

void sctp_err_finish(struct sock *sk, struct sctp_transport *t)
{
 bh_unlock_sock(sk);
 sctp_transport_put(t);
}
