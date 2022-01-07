
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe {scalar_t__ dentry; } ;


 int rpc_unlink (scalar_t__) ;

__attribute__((used)) static void
nfsd4_cld_unregister_sb(struct rpc_pipe *pipe)
{
 if (pipe->dentry)
  rpc_unlink(pipe->dentry);
}
