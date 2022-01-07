
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rtt {int * sdrtt; int * srtt; } ;


 long RPC_RTO_MIN ;

void rpc_update_rtt(struct rpc_rtt *rt, unsigned int timer, long m)
{
 long *srtt, *sdrtt;

 if (timer-- == 0)
  return;


 if (m < 0)
  return;

 if (m == 0)
  m = 1L;

 srtt = (long *)&rt->srtt[timer];
 m -= *srtt >> 3;
 *srtt += m;

 if (m < 0)
  m = -m;

 sdrtt = (long *)&rt->sdrtt[timer];
 m -= *sdrtt >> 2;
 *sdrtt += m;


 if (*sdrtt < RPC_RTO_MIN)
  *sdrtt = RPC_RTO_MIN;
}
