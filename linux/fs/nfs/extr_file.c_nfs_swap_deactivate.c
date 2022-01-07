
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_clnt {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
struct TYPE_2__ {int host; } ;


 struct rpc_clnt* NFS_CLIENT (int ) ;
 int rpc_clnt_swap_deactivate (struct rpc_clnt*) ;

__attribute__((used)) static void nfs_swap_deactivate(struct file *file)
{
 struct rpc_clnt *clnt = NFS_CLIENT(file->f_mapping->host);

 rpc_clnt_swap_deactivate(clnt);
}
