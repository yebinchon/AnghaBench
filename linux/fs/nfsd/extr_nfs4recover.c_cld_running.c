
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe {scalar_t__ nwriters; scalar_t__ nreaders; } ;
struct nfsd_net {struct cld_net* cld_net; } ;
struct cld_net {struct rpc_pipe* cn_pipe; } ;



__attribute__((used)) static bool
cld_running(struct nfsd_net *nn)
{
 struct cld_net *cn = nn->cld_net;
 struct rpc_pipe *pipe = cn->cn_pipe;

 return pipe->nreaders || pipe->nwriters;
}
