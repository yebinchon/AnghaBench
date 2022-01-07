
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_task {int dummy; } ;
struct rpc_cred {int dummy; } ;
struct rpc_clnt {int dummy; } ;


 struct rpc_task* rpc_call_null_helper (struct rpc_clnt*,int *,struct rpc_cred*,int,int *,int *) ;

struct rpc_task *rpc_call_null(struct rpc_clnt *clnt, struct rpc_cred *cred, int flags)
{
 return rpc_call_null_helper(clnt, ((void*)0), cred, flags, ((void*)0), ((void*)0));
}
