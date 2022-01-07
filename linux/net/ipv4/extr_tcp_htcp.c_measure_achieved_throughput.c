
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tcp_sock {int snd_cwnd; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {int icsk_ca_state; } ;
struct htcp {int packetcount; int lasttime; int alpha; int minRTT; int minB; int maxB; int Bi; scalar_t__ pkts_acked; } ;
struct ack_sample {scalar_t__ rtt_us; scalar_t__ pkts_acked; } ;
typedef int __u32 ;


 int HZ ;
 int TCPF_CA_Disorder ;
 int TCPF_CA_Open ;
 int TCP_CA_Open ;
 int htcp_ccount (struct htcp*) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct htcp* inet_csk_ca (struct sock*) ;
 int measure_rtt (struct sock*,int ) ;
 int tcp_jiffies32 ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int use_bandwidth_switch ;
 int usecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static void measure_achieved_throughput(struct sock *sk,
     const struct ack_sample *sample)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 const struct tcp_sock *tp = tcp_sk(sk);
 struct htcp *ca = inet_csk_ca(sk);
 u32 now = tcp_jiffies32;

 if (icsk->icsk_ca_state == TCP_CA_Open)
  ca->pkts_acked = sample->pkts_acked;

 if (sample->rtt_us > 0)
  measure_rtt(sk, usecs_to_jiffies(sample->rtt_us));

 if (!use_bandwidth_switch)
  return;


 if (!((1 << icsk->icsk_ca_state) & (TCPF_CA_Open | TCPF_CA_Disorder))) {
  ca->packetcount = 0;
  ca->lasttime = now;
  return;
 }

 ca->packetcount += sample->pkts_acked;

 if (ca->packetcount >= tp->snd_cwnd - (ca->alpha >> 7 ? : 1) &&
     now - ca->lasttime >= ca->minRTT &&
     ca->minRTT > 0) {
  __u32 cur_Bi = ca->packetcount * HZ / (now - ca->lasttime);

  if (htcp_ccount(ca) <= 3) {

   ca->minB = ca->maxB = ca->Bi = cur_Bi;
  } else {
   ca->Bi = (3 * ca->Bi + cur_Bi) / 4;
   if (ca->Bi > ca->maxB)
    ca->maxB = ca->Bi;
   if (ca->minB > ca->maxB)
    ca->minB = ca->maxB;
  }
  ca->packetcount = 0;
  ca->lasttime = now;
 }
}
