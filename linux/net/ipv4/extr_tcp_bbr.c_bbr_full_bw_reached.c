
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct bbr {int full_bw_reached; } ;


 struct bbr* inet_csk_ca (struct sock const*) ;

__attribute__((used)) static bool bbr_full_bw_reached(const struct sock *sk)
{
 const struct bbr *bbr = inet_csk_ca(sk);

 return bbr->full_bw_reached;
}
