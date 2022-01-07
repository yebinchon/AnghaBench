
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct nf_logger {size_t type; } const nf_logger ;


 int NFPROTO_NUMPROTO ;
 int RCU_INIT_POINTER (int ,int *) ;
 int ** loggers ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_log_mutex ;
 struct nf_logger const* nft_log_dereference (int ) ;
 int synchronize_rcu () ;

void nf_log_unregister(struct nf_logger *logger)
{
 const struct nf_logger *log;
 int i;

 mutex_lock(&nf_log_mutex);
 for (i = 0; i < NFPROTO_NUMPROTO; i++) {
  log = nft_log_dereference(loggers[i][logger->type]);
  if (log == logger)
   RCU_INIT_POINTER(loggers[i][logger->type], ((void*)0));
 }
 mutex_unlock(&nf_log_mutex);
 synchronize_rcu();
}
