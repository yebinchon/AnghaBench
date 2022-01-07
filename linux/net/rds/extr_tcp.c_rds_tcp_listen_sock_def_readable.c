
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {TYPE_1__* sk; } ;
struct rds_tcp_net {struct socket* rds_tcp_listen_sock; } ;
struct net {int dummy; } ;
struct TYPE_2__ {void* sk_user_data; } ;


 struct rds_tcp_net* net_generic (struct net*,int ) ;
 int rds_tcp_netid ;

void *rds_tcp_listen_sock_def_readable(struct net *net)
{
 struct rds_tcp_net *rtn = net_generic(net, rds_tcp_netid);
 struct socket *lsock = rtn->rds_tcp_listen_sock;

 if (!lsock)
  return ((void*)0);

 return lsock->sk->sk_user_data;
}
