
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sock {int sk_socket; } ;
struct TYPE_2__ {int ** sk; } ;


 int CAP_SYS_ADMIN ;
 int EADDRINUSE ;
 int EAGAIN ;
 int ENOIOCTLCMD ;
 int EPERM ;
 int capable (int ) ;
 int init_net ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int net_eq (int ,int *) ;
 scalar_t__ pn_socket_autobind (int ) ;
 TYPE_1__ pnres ;
 int rcu_assign_pointer (int *,struct sock*) ;
 int resource_mutex ;
 int sock_hold (struct sock*) ;
 int sock_net (struct sock*) ;

int pn_sock_bind_res(struct sock *sk, u8 res)
{
 int ret = -EADDRINUSE;

 if (!net_eq(sock_net(sk), &init_net))
  return -ENOIOCTLCMD;
 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;
 if (pn_socket_autobind(sk->sk_socket))
  return -EAGAIN;

 mutex_lock(&resource_mutex);
 if (pnres.sk[res] == ((void*)0)) {
  sock_hold(sk);
  rcu_assign_pointer(pnres.sk[res], sk);
  ret = 0;
 }
 mutex_unlock(&resource_mutex);
 return ret;
}
