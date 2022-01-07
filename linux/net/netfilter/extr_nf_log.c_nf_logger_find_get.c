
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_logger {int me; } ;
typedef enum nf_log_type { ____Placeholder_nf_log_type } nf_log_type ;


 int ENOENT ;
 int NFPROTO_INET ;
 int NFPROTO_IPV4 ;
 int NFPROTO_IPV6 ;
 int ** loggers ;
 int nf_logger_put (int,int) ;
 int * rcu_access_pointer (int ) ;
 struct nf_logger* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int request_module (char*,int,int) ;
 scalar_t__ try_module_get (int ) ;

int nf_logger_find_get(int pf, enum nf_log_type type)
{
 struct nf_logger *logger;
 int ret = -ENOENT;

 if (pf == NFPROTO_INET) {
  ret = nf_logger_find_get(NFPROTO_IPV4, type);
  if (ret < 0)
   return ret;

  ret = nf_logger_find_get(NFPROTO_IPV6, type);
  if (ret < 0) {
   nf_logger_put(NFPROTO_IPV4, type);
   return ret;
  }

  return 0;
 }

 if (rcu_access_pointer(loggers[pf][type]) == ((void*)0))
  request_module("nf-logger-%u-%u", pf, type);

 rcu_read_lock();
 logger = rcu_dereference(loggers[pf][type]);
 if (logger == ((void*)0))
  goto out;

 if (try_module_get(logger->me))
  ret = 0;
out:
 rcu_read_unlock();
 return ret;
}
