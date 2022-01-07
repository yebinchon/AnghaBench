
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct nf_logger {int dummy; } ;
struct TYPE_2__ {int * nf_loggers; } ;
struct net {TYPE_1__ nf; } ;


 size_t ARRAY_SIZE (int *) ;
 int EOPNOTSUPP ;
 size_t NFPROTO_UNSPEC ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_log_mutex ;
 struct nf_logger* nft_log_dereference (int ) ;
 int rcu_assign_pointer (int ,struct nf_logger const*) ;

int nf_log_set(struct net *net, u_int8_t pf, const struct nf_logger *logger)
{
 const struct nf_logger *log;

 if (pf == NFPROTO_UNSPEC || pf >= ARRAY_SIZE(net->nf.nf_loggers))
  return -EOPNOTSUPP;

 mutex_lock(&nf_log_mutex);
 log = nft_log_dereference(net->nf.nf_loggers[pf]);
 if (log == ((void*)0))
  rcu_assign_pointer(net->nf.nf_loggers[pf], logger);

 mutex_unlock(&nf_log_mutex);

 return 0;
}
