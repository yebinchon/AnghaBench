
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;
struct bbr {int bw; } ;


 struct bbr* inet_csk_ca (struct sock const*) ;
 int minmax_get (int *) ;

__attribute__((used)) static u32 bbr_max_bw(const struct sock *sk)
{
 struct bbr *bbr = inet_csk_ca(sk);

 return minmax_get(&bbr->bw);
}
