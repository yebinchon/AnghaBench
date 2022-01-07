
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sock {int dummy; } ;
struct bbr {int * extra_acked; } ;


 struct bbr* inet_csk_ca (struct sock const*) ;
 int max (int ,int ) ;

__attribute__((used)) static u16 bbr_extra_acked(const struct sock *sk)
{
 struct bbr *bbr = inet_csk_ca(sk);

 return max(bbr->extra_acked[0], bbr->extra_acked[1]);
}
