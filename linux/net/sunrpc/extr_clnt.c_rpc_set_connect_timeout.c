
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct connect_timeout_data {unsigned long connect_timeout; unsigned long reconnect_timeout; } ;


 int rpc_clnt_iterate_for_each_xprt (struct rpc_clnt*,int ,struct connect_timeout_data*) ;
 int rpc_xprt_set_connect_timeout ;

void
rpc_set_connect_timeout(struct rpc_clnt *clnt,
  unsigned long connect_timeout,
  unsigned long reconnect_timeout)
{
 struct connect_timeout_data timeout = {
  .connect_timeout = connect_timeout,
  .reconnect_timeout = reconnect_timeout,
 };
 rpc_clnt_iterate_for_each_xprt(clnt,
   rpc_xprt_set_connect_timeout,
   &timeout);
}
