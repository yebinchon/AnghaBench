
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {scalar_t__ tlp_high_seq; } ;
struct sock {int dummy; } ;


 int FLAG_DATA_SACKED ;
 int FLAG_DSACKING_ACK ;
 int FLAG_NOT_DUP ;
 int FLAG_SND_UNA_ADVANCED ;
 int LINUX_MIB_TCPLOSSPROBERECOVERY ;
 int NET_INC_STATS (int ,int ) ;
 int TCP_CA_CWR ;
 scalar_t__ after (int ,scalar_t__) ;
 scalar_t__ before (int ,scalar_t__) ;
 int sock_net (struct sock*) ;
 int tcp_end_cwnd_reduction (struct sock*) ;
 int tcp_init_cwnd_reduction (struct sock*) ;
 int tcp_set_ca_state (struct sock*,int ) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int tcp_try_keep_open (struct sock*) ;

__attribute__((used)) static void tcp_process_tlp_ack(struct sock *sk, u32 ack, int flag)
{
 struct tcp_sock *tp = tcp_sk(sk);

 if (before(ack, tp->tlp_high_seq))
  return;

 if (flag & FLAG_DSACKING_ACK) {

  tp->tlp_high_seq = 0;
 } else if (after(ack, tp->tlp_high_seq)) {



  tcp_init_cwnd_reduction(sk);
  tcp_set_ca_state(sk, TCP_CA_CWR);
  tcp_end_cwnd_reduction(sk);
  tcp_try_keep_open(sk);
  NET_INC_STATS(sock_net(sk),
    LINUX_MIB_TCPLOSSPROBERECOVERY);
 } else if (!(flag & (FLAG_SND_UNA_ADVANCED |
        FLAG_NOT_DUP | FLAG_DATA_SACKED))) {

  tp->tlp_high_seq = 0;
 }
}
