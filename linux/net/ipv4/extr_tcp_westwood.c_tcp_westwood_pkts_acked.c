
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct westwood {int rtt; } ;
struct sock {int dummy; } ;
struct ack_sample {scalar_t__ rtt_us; } ;


 struct westwood* inet_csk_ca (struct sock*) ;
 int usecs_to_jiffies (scalar_t__) ;

__attribute__((used)) static void tcp_westwood_pkts_acked(struct sock *sk,
        const struct ack_sample *sample)
{
 struct westwood *w = inet_csk_ca(sk);

 if (sample->rtt_us > 0)
  w->rtt = usecs_to_jiffies(sample->rtt_us);
}
