
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int connect_cookie; } ;


 unsigned int READ_ONCE (int ) ;

__attribute__((used)) static unsigned int
xprt_connect_cookie(struct rpc_xprt *xprt)
{
 return READ_ONCE(xprt->connect_cookie);
}
