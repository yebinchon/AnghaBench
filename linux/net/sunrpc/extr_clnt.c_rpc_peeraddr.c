
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct rpc_xprt {size_t addrlen; int addr; } ;
struct rpc_clnt {int cl_xprt; } ;


 int memcpy (struct sockaddr*,int *,size_t) ;
 struct rpc_xprt* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

size_t rpc_peeraddr(struct rpc_clnt *clnt, struct sockaddr *buf, size_t bufsize)
{
 size_t bytes;
 struct rpc_xprt *xprt;

 rcu_read_lock();
 xprt = rcu_dereference(clnt->cl_xprt);

 bytes = xprt->addrlen;
 if (bytes > bufsize)
  bytes = bufsize;
 memcpy(buf, &xprt->addr, bytes);
 rcu_read_unlock();

 return bytes;
}
