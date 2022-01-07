
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int sa_family; } ;
struct rpc_xprt {size_t addrlen; int xprt_net; int addr; } ;
struct rpc_clnt {int cl_xprt; } ;
struct net {int dummy; } ;


 struct net* get_net (int ) ;
 int memcpy (struct sockaddr*,int *,size_t) ;
 int put_net (struct net*) ;
 struct rpc_xprt* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int rpc_anyaddr (int ,struct sockaddr*,size_t) ;
 int rpc_set_port (struct sockaddr*,int ) ;
 int rpc_sockname (struct net*,struct sockaddr*,size_t,struct sockaddr*) ;

int rpc_localaddr(struct rpc_clnt *clnt, struct sockaddr *buf, size_t buflen)
{
 struct sockaddr_storage address;
 struct sockaddr *sap = (struct sockaddr *)&address;
 struct rpc_xprt *xprt;
 struct net *net;
 size_t salen;
 int err;

 rcu_read_lock();
 xprt = rcu_dereference(clnt->cl_xprt);
 salen = xprt->addrlen;
 memcpy(sap, &xprt->addr, salen);
 net = get_net(xprt->xprt_net);
 rcu_read_unlock();

 rpc_set_port(sap, 0);
 err = rpc_sockname(net, sap, salen, buf);
 put_net(net);
 if (err != 0)

  return rpc_anyaddr(sap->sa_family, buf, buflen);
 return 0;
}
