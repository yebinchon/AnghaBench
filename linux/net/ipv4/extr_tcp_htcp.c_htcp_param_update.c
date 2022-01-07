
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct sock {int dummy; } ;
struct htcp {scalar_t__ minRTT; scalar_t__ maxRTT; } ;


 int htcp_alpha_update (struct htcp*) ;
 int htcp_beta_update (struct htcp*,scalar_t__,scalar_t__) ;
 struct htcp* inet_csk_ca (struct sock*) ;

__attribute__((used)) static void htcp_param_update(struct sock *sk)
{
 struct htcp *ca = inet_csk_ca(sk);
 u32 minRTT = ca->minRTT;
 u32 maxRTT = ca->maxRTT;

 htcp_beta_update(ca, minRTT, maxRTT);
 htcp_alpha_update(ca);


 if (minRTT > 0 && maxRTT > minRTT)
  ca->maxRTT = minRTT + ((maxRTT - minRTT) * 95) / 100;
}
