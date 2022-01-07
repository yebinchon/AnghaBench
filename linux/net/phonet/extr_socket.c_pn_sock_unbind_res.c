
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sock {int dummy; } ;
struct TYPE_2__ {struct sock** sk; } ;


 int CAP_SYS_ADMIN ;
 int ENOENT ;
 int EPERM ;
 int RCU_INIT_POINTER (struct sock*,int *) ;
 int capable (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ pnres ;
 int resource_mutex ;
 int sock_put (struct sock*) ;
 int synchronize_rcu () ;

int pn_sock_unbind_res(struct sock *sk, u8 res)
{
 int ret = -ENOENT;

 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;

 mutex_lock(&resource_mutex);
 if (pnres.sk[res] == sk) {
  RCU_INIT_POINTER(pnres.sk[res], ((void*)0));
  ret = 0;
 }
 mutex_unlock(&resource_mutex);

 if (ret == 0) {
  synchronize_rcu();
  sock_put(sk);
 }
 return ret;
}
