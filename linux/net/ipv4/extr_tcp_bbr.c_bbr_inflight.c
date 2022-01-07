
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {int dummy; } ;


 int bbr_bdp (struct sock*,int ,int) ;
 int bbr_quantization_budget (struct sock*,int ) ;

__attribute__((used)) static u32 bbr_inflight(struct sock *sk, u32 bw, int gain)
{
 u32 inflight;

 inflight = bbr_bdp(sk, bw, gain);
 inflight = bbr_quantization_budget(sk, inflight);

 return inflight;
}
