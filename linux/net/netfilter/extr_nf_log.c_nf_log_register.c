
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct nf_logger {size_t type; } ;
struct TYPE_3__ {int nf_loggers; } ;
struct TYPE_4__ {TYPE_1__ nf; } ;


 size_t ARRAY_SIZE (int ) ;
 int EEXIST ;
 int EINVAL ;
 int NFPROTO_NUMPROTO ;
 size_t NFPROTO_UNSPEC ;
 TYPE_2__ init_net ;
 int ** loggers ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_log_mutex ;
 scalar_t__ rcu_access_pointer (int ) ;
 int rcu_assign_pointer (int ,struct nf_logger*) ;

int nf_log_register(u_int8_t pf, struct nf_logger *logger)
{
 int i;
 int ret = 0;

 if (pf >= ARRAY_SIZE(init_net.nf.nf_loggers))
  return -EINVAL;

 mutex_lock(&nf_log_mutex);

 if (pf == NFPROTO_UNSPEC) {
  for (i = NFPROTO_UNSPEC; i < NFPROTO_NUMPROTO; i++) {
   if (rcu_access_pointer(loggers[i][logger->type])) {
    ret = -EEXIST;
    goto unlock;
   }
  }
  for (i = NFPROTO_UNSPEC; i < NFPROTO_NUMPROTO; i++)
   rcu_assign_pointer(loggers[i][logger->type], logger);
 } else {
  if (rcu_access_pointer(loggers[pf][logger->type])) {
   ret = -EEXIST;
   goto unlock;
  }
  rcu_assign_pointer(loggers[pf][logger->type], logger);
 }

unlock:
 mutex_unlock(&nf_log_mutex);
 return ret;
}
