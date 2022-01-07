
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct rate_sample {int acked_sacked; } ;
struct bbr {int cwnd_gain; int pacing_gain; } ;


 int bbr_bw (struct sock*) ;
 int bbr_set_cwnd (struct sock*,struct rate_sample const*,int ,int ,int ) ;
 int bbr_set_pacing_rate (struct sock*,int ,int ) ;
 int bbr_update_model (struct sock*,struct rate_sample const*) ;
 struct bbr* inet_csk_ca (struct sock*) ;

__attribute__((used)) static void bbr_main(struct sock *sk, const struct rate_sample *rs)
{
 struct bbr *bbr = inet_csk_ca(sk);
 u32 bw;

 bbr_update_model(sk, rs);

 bw = bbr_bw(sk);
 bbr_set_pacing_rate(sk, bw, bbr->pacing_gain);
 bbr_set_cwnd(sk, rs, rs->acked_sacked, bw, bbr->cwnd_gain);
}
