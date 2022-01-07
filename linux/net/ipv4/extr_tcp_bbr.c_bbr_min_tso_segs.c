
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int sk_pacing_rate; } ;


 int bbr_min_tso_rate ;

__attribute__((used)) static u32 bbr_min_tso_segs(struct sock *sk)
{
 return sk->sk_pacing_rate < (bbr_min_tso_rate >> 3) ? 1 : 2;
}
