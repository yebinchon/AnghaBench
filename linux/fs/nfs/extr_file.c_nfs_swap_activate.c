
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct swap_info_struct {int pages; } ;
struct rpc_clnt {int dummy; } ;
struct file {TYPE_1__* f_mapping; } ;
typedef int sector_t ;
struct TYPE_2__ {int host; } ;


 struct rpc_clnt* NFS_CLIENT (int ) ;
 int rpc_clnt_swap_activate (struct rpc_clnt*) ;

__attribute__((used)) static int nfs_swap_activate(struct swap_info_struct *sis, struct file *file,
      sector_t *span)
{
 struct rpc_clnt *clnt = NFS_CLIENT(file->f_mapping->host);

 *span = sis->pages;

 return rpc_clnt_swap_activate(clnt);
}
