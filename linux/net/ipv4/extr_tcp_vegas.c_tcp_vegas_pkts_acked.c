
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct vegas {scalar_t__ baseRTT; int cntRTT; int minRTT; } ;
struct sock {int dummy; } ;
struct ack_sample {scalar_t__ rtt_us; } ;


 struct vegas* inet_csk_ca (struct sock*) ;
 int min (int ,scalar_t__) ;

void tcp_vegas_pkts_acked(struct sock *sk, const struct ack_sample *sample)
{
 struct vegas *vegas = inet_csk_ca(sk);
 u32 vrtt;

 if (sample->rtt_us < 0)
  return;


 vrtt = sample->rtt_us + 1;


 if (vrtt < vegas->baseRTT)
  vegas->baseRTT = vrtt;




 vegas->minRTT = min(vegas->minRTT, vrtt);
 vegas->cntRTT++;
}
