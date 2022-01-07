
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct net {int user_ns; } ;


 int CAP_NET_ADMIN ;
 int EACCES ;
 int EINVAL ;
 struct net* ERR_PTR (int ) ;
 struct net* get_net_ns_by_id (int ,int) ;
 int put_net (struct net*) ;
 int sk_ns_capable (struct sock*,int ,int ) ;
 int sock_net (struct sock*) ;

struct net *rtnl_get_net_ns_capable(struct sock *sk, int netnsid)
{
 struct net *net;

 net = get_net_ns_by_id(sock_net(sk), netnsid);
 if (!net)
  return ERR_PTR(-EINVAL);




 if (!sk_ns_capable(sk, net->user_ns, CAP_NET_ADMIN)) {
  put_net(net);
  return ERR_PTR(-EACCES);
 }
 return net;
}
