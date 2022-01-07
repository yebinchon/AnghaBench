
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int dummy; } ;
struct rpc_auth_create_args {int dummy; } ;
struct rpc_auth {int au_count; } ;


 int refcount_inc (int *) ;
 struct rpc_auth unix_auth ;

__attribute__((used)) static struct rpc_auth *
unx_create(const struct rpc_auth_create_args *args, struct rpc_clnt *clnt)
{
 refcount_inc(&unix_auth.au_count);
 return &unix_auth;
}
