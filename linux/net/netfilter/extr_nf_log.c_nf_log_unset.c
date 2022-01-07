
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nf_logger {int dummy; } ;
struct TYPE_2__ {int * nf_loggers; } ;
struct net {TYPE_1__ nf; } ;


 int NFPROTO_NUMPROTO ;
 int RCU_INIT_POINTER (int ,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_log_mutex ;
 struct nf_logger* nft_log_dereference (int ) ;

void nf_log_unset(struct net *net, const struct nf_logger *logger)
{
 int i;
 const struct nf_logger *log;

 mutex_lock(&nf_log_mutex);
 for (i = 0; i < NFPROTO_NUMPROTO; i++) {
  log = nft_log_dereference(net->nf.nf_loggers[i]);
  if (log == logger)
   RCU_INIT_POINTER(net->nf.nf_loggers[i], ((void*)0));
 }
 mutex_unlock(&nf_log_mutex);
}
