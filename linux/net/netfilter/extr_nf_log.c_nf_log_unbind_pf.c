
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct TYPE_2__ {int * nf_loggers; } ;
struct net {TYPE_1__ nf; } ;


 size_t ARRAY_SIZE (int *) ;
 int RCU_INIT_POINTER (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_log_mutex ;

void nf_log_unbind_pf(struct net *net, u_int8_t pf)
{
 if (pf >= ARRAY_SIZE(net->nf.nf_loggers))
  return;
 mutex_lock(&nf_log_mutex);
 RCU_INIT_POINTER(net->nf.nf_loggers[pf], ((void*)0));
 mutex_unlock(&nf_log_mutex);
}
