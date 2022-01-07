
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_logger {int me; } ;
typedef enum nf_log_type { ____Placeholder_nf_log_type } nf_log_type ;


 int BUG_ON (int ) ;
 int NFPROTO_INET ;
 int NFPROTO_IPV4 ;
 int NFPROTO_IPV6 ;
 int *** loggers ;
 int module_put (int ) ;
 struct nf_logger* rcu_dereference (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

void nf_logger_put(int pf, enum nf_log_type type)
{
 struct nf_logger *logger;

 if (pf == NFPROTO_INET) {
  nf_logger_put(NFPROTO_IPV4, type);
  nf_logger_put(NFPROTO_IPV6, type);
  return;
 }

 BUG_ON(loggers[pf][type] == ((void*)0));

 rcu_read_lock();
 logger = rcu_dereference(loggers[pf][type]);
 module_put(logger->me);
 rcu_read_unlock();
}
