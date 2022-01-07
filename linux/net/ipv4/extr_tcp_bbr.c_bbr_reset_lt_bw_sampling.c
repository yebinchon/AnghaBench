
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct bbr {int lt_is_sampling; scalar_t__ lt_use_bw; scalar_t__ lt_bw; } ;


 int bbr_reset_lt_bw_sampling_interval (struct sock*) ;
 struct bbr* inet_csk_ca (struct sock*) ;

__attribute__((used)) static void bbr_reset_lt_bw_sampling(struct sock *sk)
{
 struct bbr *bbr = inet_csk_ca(sk);

 bbr->lt_bw = 0;
 bbr->lt_use_bw = 0;
 bbr->lt_is_sampling = 0;
 bbr_reset_lt_bw_sampling_interval(sk);
}
