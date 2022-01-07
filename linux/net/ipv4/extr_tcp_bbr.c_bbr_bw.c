
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct bbr {int lt_bw; scalar_t__ lt_use_bw; } ;


 int bbr_max_bw (struct sock const*) ;
 struct bbr* inet_csk_ca (struct sock const*) ;

__attribute__((used)) static u32 bbr_bw(const struct sock *sk)
{
 struct bbr *bbr = inet_csk_ca(sk);

 return bbr->lt_use_bw ? bbr->lt_bw : bbr_max_bw(sk);
}
