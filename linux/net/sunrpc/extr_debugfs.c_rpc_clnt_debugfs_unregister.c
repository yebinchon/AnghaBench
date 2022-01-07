
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_clnt {int * cl_debugfs; } ;


 int debugfs_remove_recursive (int *) ;

void
rpc_clnt_debugfs_unregister(struct rpc_clnt *clnt)
{
 debugfs_remove_recursive(clnt->cl_debugfs);
 clnt->cl_debugfs = ((void*)0);
}
