
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct veno {scalar_t__ basertt; int cntrtt; int minrtt; } ;
struct sock {int dummy; } ;
struct ack_sample {scalar_t__ rtt_us; } ;


 struct veno* inet_csk_ca (struct sock*) ;
 int min (int ,scalar_t__) ;

__attribute__((used)) static void tcp_veno_pkts_acked(struct sock *sk,
    const struct ack_sample *sample)
{
 struct veno *veno = inet_csk_ca(sk);
 u32 vrtt;

 if (sample->rtt_us < 0)
  return;


 vrtt = sample->rtt_us + 1;


 if (vrtt < veno->basertt)
  veno->basertt = vrtt;




 veno->minrtt = min(veno->minrtt, vrtt);
 veno->cntrtt++;
}
