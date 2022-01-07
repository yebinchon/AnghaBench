
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int cl_pipedir_objects; } ;
struct net {int dummy; } ;
struct gss_pipe {int pipe; int pdo; struct rpc_clnt* clnt; } ;


 int kfree (struct gss_pipe*) ;
 int rpc_destroy_pipe_data (int ) ;
 struct net* rpc_net_ns (struct rpc_clnt*) ;
 int rpc_remove_pipe_dir_object (struct net*,int *,int *) ;

__attribute__((used)) static void __gss_pipe_free(struct gss_pipe *p)
{
 struct rpc_clnt *clnt = p->clnt;
 struct net *net = rpc_net_ns(clnt);

 rpc_remove_pipe_dir_object(net,
   &clnt->cl_pipedir_objects,
   &p->pdo);
 rpc_destroy_pipe_data(p->pipe);
 kfree(p);
}
