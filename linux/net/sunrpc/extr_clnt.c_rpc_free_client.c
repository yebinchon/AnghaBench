
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_clnt {int cl_cred; int cl_xpi; int cl_xprt; int * cl_metrics; struct rpc_clnt* cl_parent; TYPE_1__* cl_program; } ;
struct TYPE_4__ {int servername; } ;
struct TYPE_3__ {int name; } ;


 int dprintk_rcu (char*,int ,int ) ;
 int kfree (struct rpc_clnt*) ;
 int put_cred (int ) ;
 TYPE_2__* rcu_dereference (int ) ;
 int rcu_dereference_raw (int ) ;
 int rpc_clnt_debugfs_unregister (struct rpc_clnt*) ;
 int rpc_clnt_remove_pipedir (struct rpc_clnt*) ;
 int rpc_free_clid (struct rpc_clnt*) ;
 int rpc_free_iostats (int *) ;
 int rpc_unregister_client (struct rpc_clnt*) ;
 int rpciod_down () ;
 int xprt_iter_destroy (int *) ;
 int xprt_put (int ) ;

__attribute__((used)) static struct rpc_clnt *
rpc_free_client(struct rpc_clnt *clnt)
{
 struct rpc_clnt *parent = ((void*)0);

 dprintk_rcu("RPC:       destroying %s client for %s\n",
   clnt->cl_program->name,
   rcu_dereference(clnt->cl_xprt)->servername);
 if (clnt->cl_parent != clnt)
  parent = clnt->cl_parent;
 rpc_clnt_debugfs_unregister(clnt);
 rpc_clnt_remove_pipedir(clnt);
 rpc_unregister_client(clnt);
 rpc_free_iostats(clnt->cl_metrics);
 clnt->cl_metrics = ((void*)0);
 xprt_put(rcu_dereference_raw(clnt->cl_xprt));
 xprt_iter_destroy(&clnt->cl_xpi);
 rpciod_down();
 put_cred(clnt->cl_cred);
 rpc_free_clid(clnt);
 kfree(clnt);
 return parent;
}
