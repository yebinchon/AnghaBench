
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct nf_logger {int name; } ;
struct TYPE_2__ {int * nf_loggers; } ;
struct net {TYPE_1__ nf; } ;


 size_t ARRAY_SIZE (int *) ;
 int EINVAL ;
 int ENOENT ;
 int * __find_logger (size_t,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_log_mutex ;
 int rcu_assign_pointer (int ,struct nf_logger const*) ;

int nf_log_bind_pf(struct net *net, u_int8_t pf,
     const struct nf_logger *logger)
{
 if (pf >= ARRAY_SIZE(net->nf.nf_loggers))
  return -EINVAL;
 mutex_lock(&nf_log_mutex);
 if (__find_logger(pf, logger->name) == ((void*)0)) {
  mutex_unlock(&nf_log_mutex);
  return -ENOENT;
 }
 rcu_assign_pointer(net->nf.nf_loggers[pf], logger);
 mutex_unlock(&nf_log_mutex);
 return 0;
}
