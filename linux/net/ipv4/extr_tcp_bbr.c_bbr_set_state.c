
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct sock {int dummy; } ;
struct rate_sample {int losses; } ;
struct bbr {int round_start; scalar_t__ full_bw; scalar_t__ prev_ca_state; } ;


 scalar_t__ TCP_CA_Loss ;
 int bbr_lt_bw_sampling (struct sock*,struct rate_sample*) ;
 struct bbr* inet_csk_ca (struct sock*) ;

__attribute__((used)) static void bbr_set_state(struct sock *sk, u8 new_state)
{
 struct bbr *bbr = inet_csk_ca(sk);

 if (new_state == TCP_CA_Loss) {
  struct rate_sample rs = { .losses = 1 };

  bbr->prev_ca_state = TCP_CA_Loss;
  bbr->full_bw = 0;
  bbr->round_start = 1;
  bbr_lt_bw_sampling(sk, &rs);
 }
}
