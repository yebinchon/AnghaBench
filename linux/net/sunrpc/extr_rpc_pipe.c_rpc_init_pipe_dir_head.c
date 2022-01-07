
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_pipe_dir_head {int * pdh_dentry; int pdh_entries; } ;


 int INIT_LIST_HEAD (int *) ;

void rpc_init_pipe_dir_head(struct rpc_pipe_dir_head *pdh)
{
 INIT_LIST_HEAD(&pdh->pdh_entries);
 pdh->pdh_dentry = ((void*)0);
}
