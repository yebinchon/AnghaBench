
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct bbr {scalar_t__ full_bw_cnt; scalar_t__ full_bw; } ;
struct TYPE_2__ {int snd_cwnd; } ;


 int bbr_reset_lt_bw_sampling (struct sock*) ;
 struct bbr* inet_csk_ca (struct sock*) ;
 TYPE_1__* tcp_sk (struct sock*) ;

__attribute__((used)) static u32 bbr_undo_cwnd(struct sock *sk)
{
 struct bbr *bbr = inet_csk_ca(sk);

 bbr->full_bw = 0;
 bbr->full_bw_cnt = 0;
 bbr_reset_lt_bw_sampling(sk);
 return tcp_sk(sk)->snd_cwnd;
}
