
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct bbr {int mode; size_t cycle_idx; void* cwnd_gain; void* pacing_gain; int lt_use_bw; } ;






 void* BBR_UNIT ;
 int WARN_ONCE (int,char*,int) ;
 void* bbr_cwnd_gain ;
 void* bbr_drain_gain ;
 void* bbr_high_gain ;
 void** bbr_pacing_gain ;
 struct bbr* inet_csk_ca (struct sock*) ;

__attribute__((used)) static void bbr_update_gains(struct sock *sk)
{
 struct bbr *bbr = inet_csk_ca(sk);

 switch (bbr->mode) {
 case 128:
  bbr->pacing_gain = bbr_high_gain;
  bbr->cwnd_gain = bbr_high_gain;
  break;
 case 131:
  bbr->pacing_gain = bbr_drain_gain;
  bbr->cwnd_gain = bbr_high_gain;
  break;
 case 130:
  bbr->pacing_gain = (bbr->lt_use_bw ?
        BBR_UNIT :
        bbr_pacing_gain[bbr->cycle_idx]);
  bbr->cwnd_gain = bbr_cwnd_gain;
  break;
 case 129:
  bbr->pacing_gain = BBR_UNIT;
  bbr->cwnd_gain = BBR_UNIT;
  break;
 default:
  WARN_ONCE(1, "BBR bad mode: %u\n", bbr->mode);
  break;
 }
}
