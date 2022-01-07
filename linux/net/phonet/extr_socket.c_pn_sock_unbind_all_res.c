
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {struct sock** sk; } ;


 int RCU_INIT_POINTER (struct sock*,int *) ;
 int __sock_put (struct sock*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ pnres ;
 int resource_mutex ;

void pn_sock_unbind_all_res(struct sock *sk)
{
 unsigned int res, match = 0;

 mutex_lock(&resource_mutex);
 for (res = 0; res < 256; res++) {
  if (pnres.sk[res] == sk) {
   RCU_INIT_POINTER(pnres.sk[res], ((void*)0));
   match++;
  }
 }
 mutex_unlock(&resource_mutex);

 while (match > 0) {
  __sock_put(sk);
  match--;
 }

}
