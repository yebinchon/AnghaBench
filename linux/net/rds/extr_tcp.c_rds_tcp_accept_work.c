
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct rds_tcp_net {int rds_tcp_accept_w; } ;
struct net {int dummy; } ;


 struct rds_tcp_net* net_generic (struct net*,int ) ;
 int queue_work (int ,int *) ;
 int rds_tcp_netid ;
 int rds_wq ;
 struct net* sock_net (struct sock*) ;

void rds_tcp_accept_work(struct sock *sk)
{
 struct net *net = sock_net(sk);
 struct rds_tcp_net *rtn = net_generic(net, rds_tcp_netid);

 queue_work(rds_wq, &rtn->rds_tcp_accept_w);
}
