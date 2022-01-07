
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_xprt {int * debugfs; } ;


 int debugfs_remove_recursive (int *) ;

void
rpc_xprt_debugfs_unregister(struct rpc_xprt *xprt)
{
 debugfs_remove_recursive(xprt->debugfs);
 xprt->debugfs = ((void*)0);
}
