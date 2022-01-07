
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_xprt {TYPE_1__* ops; } ;
struct rpc_clnt {int dummy; } ;
struct connect_timeout_data {int reconnect_timeout; int connect_timeout; } ;
struct TYPE_2__ {int (* set_connect_timeout ) (struct rpc_xprt*,int ,int ) ;} ;


 int stub1 (struct rpc_xprt*,int ,int ) ;

__attribute__((used)) static int
rpc_xprt_set_connect_timeout(struct rpc_clnt *clnt,
  struct rpc_xprt *xprt,
  void *data)
{
 struct connect_timeout_data *timeo = data;

 if (xprt->ops->set_connect_timeout)
  xprt->ops->set_connect_timeout(xprt,
    timeo->connect_timeout,
    timeo->reconnect_timeout);
 return 0;
}
