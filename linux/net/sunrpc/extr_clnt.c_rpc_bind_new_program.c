
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rpc_program {int number; } ;
struct rpc_create_args {int cred; int authflavor; int version; int prognumber; struct rpc_program const* program; } ;
struct rpc_clnt {int cl_cred; TYPE_1__* cl_auth; } ;
struct TYPE_2__ {int au_flavor; } ;


 struct rpc_clnt* ERR_PTR (int) ;
 scalar_t__ IS_ERR (struct rpc_clnt*) ;
 struct rpc_clnt* __rpc_clone_client (struct rpc_create_args*,struct rpc_clnt*) ;
 int rpc_ping (struct rpc_clnt*) ;
 int rpc_shutdown_client (struct rpc_clnt*) ;

struct rpc_clnt *rpc_bind_new_program(struct rpc_clnt *old,
          const struct rpc_program *program,
          u32 vers)
{
 struct rpc_create_args args = {
  .program = program,
  .prognumber = program->number,
  .version = vers,
  .authflavor = old->cl_auth->au_flavor,
  .cred = old->cl_cred,
 };
 struct rpc_clnt *clnt;
 int err;

 clnt = __rpc_clone_client(&args, old);
 if (IS_ERR(clnt))
  goto out;
 err = rpc_ping(clnt);
 if (err != 0) {
  rpc_shutdown_client(clnt);
  clnt = ERR_PTR(err);
 }
out:
 return clnt;
}
