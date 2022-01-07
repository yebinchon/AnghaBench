
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_rtt {unsigned long timeo; unsigned long* srtt; unsigned long* sdrtt; scalar_t__* ntimeouts; } ;


 unsigned long RPC_RTO_INIT ;

void rpc_init_rtt(struct rpc_rtt *rt, unsigned long timeo)
{
 unsigned long init = 0;
 unsigned int i;

 rt->timeo = timeo;

 if (timeo > RPC_RTO_INIT)
  init = (timeo - RPC_RTO_INIT) << 3;
 for (i = 0; i < 5; i++) {
  rt->srtt[i] = init;
  rt->sdrtt[i] = RPC_RTO_INIT;
  rt->ntimeouts[i] = 0;
 }
}
