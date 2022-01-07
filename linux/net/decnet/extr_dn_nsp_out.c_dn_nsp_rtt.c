
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct dn_scp {unsigned long nsp_srtt; unsigned long nsp_rttvar; } ;


 struct dn_scp* DN_SK (struct sock*) ;

__attribute__((used)) static void dn_nsp_rtt(struct sock *sk, long rtt)
{
 struct dn_scp *scp = DN_SK(sk);
 long srtt = (long)scp->nsp_srtt;
 long rttvar = (long)scp->nsp_rttvar;
 long delta;






 if (rtt < 0)
  rtt = -rtt;



 delta = ((rtt << 3) - srtt);
 srtt += (delta >> 3);
 if (srtt >= 1)
  scp->nsp_srtt = (unsigned long)srtt;
 else
  scp->nsp_srtt = 1;




 delta >>= 1;
 rttvar += ((((delta>0)?(delta):(-delta)) - rttvar) >> 2);
 if (rttvar >= 1)
  scp->nsp_rttvar = (unsigned long)rttvar;
 else
  scp->nsp_rttvar = 1;


}
