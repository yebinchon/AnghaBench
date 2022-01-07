
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yeah {int pkts_acked; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; } ;
struct ack_sample {int pkts_acked; } ;


 scalar_t__ TCP_CA_Open ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct yeah* inet_csk_ca (struct sock*) ;
 int tcp_vegas_pkts_acked (struct sock*,struct ack_sample const*) ;

__attribute__((used)) static void tcp_yeah_pkts_acked(struct sock *sk,
    const struct ack_sample *sample)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 struct yeah *yeah = inet_csk_ca(sk);

 if (icsk->icsk_ca_state == TCP_CA_Open)
  yeah->pkts_acked = sample->pkts_acked;

 tcp_vegas_pkts_acked(sk, sample);
}
