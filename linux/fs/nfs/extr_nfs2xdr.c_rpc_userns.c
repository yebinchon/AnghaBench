
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct user_namespace {int dummy; } ;
struct rpc_clnt {TYPE_1__* cl_cred; } ;
struct TYPE_2__ {struct user_namespace* user_ns; } ;


 struct user_namespace init_user_ns ;

__attribute__((used)) static struct user_namespace *rpc_userns(const struct rpc_clnt *clnt)
{
 if (clnt && clnt->cl_cred)
  return clnt->cl_cred->user_ns;
 return &init_user_ns;
}
