
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_create_args {int cred; int authflavor; int version; int prognumber; int program; } ;
struct rpc_clnt {int cl_cred; int cl_vers; int cl_prog; int cl_program; } ;
typedef int rpc_authflavor_t ;


 struct rpc_clnt* __rpc_clone_client (struct rpc_create_args*,struct rpc_clnt*) ;

struct rpc_clnt *
rpc_clone_client_set_auth(struct rpc_clnt *clnt, rpc_authflavor_t flavor)
{
 struct rpc_create_args args = {
  .program = clnt->cl_program,
  .prognumber = clnt->cl_prog,
  .version = clnt->cl_vers,
  .authflavor = flavor,
  .cred = clnt->cl_cred,
 };
 return __rpc_clone_client(&args, clnt);
}
