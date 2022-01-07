
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct illinois {int base_rtt; scalar_t__ rtt_above; scalar_t__ rtt_low; scalar_t__ acked; scalar_t__ max_rtt; int beta; int alpha; } ;


 int ALPHA_MAX ;
 int BETA_BASE ;
 struct illinois* inet_csk_ca (struct sock*) ;
 int rtt_reset (struct sock*) ;

__attribute__((used)) static void tcp_illinois_init(struct sock *sk)
{
 struct illinois *ca = inet_csk_ca(sk);

 ca->alpha = ALPHA_MAX;
 ca->beta = BETA_BASE;
 ca->base_rtt = 0x7fffffff;
 ca->max_rtt = 0;

 ca->acked = 0;
 ca->rtt_low = 0;
 ca->rtt_above = 0;

 rtt_reset(sk);
}
