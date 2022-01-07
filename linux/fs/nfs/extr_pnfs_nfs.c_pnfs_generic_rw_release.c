
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_pgio_header {TYPE_1__* mds_ops; int ds_clp; } ;
struct TYPE_2__ {int (* rpc_release ) (void*) ;} ;


 int nfs_put_client (int ) ;
 int stub1 (void*) ;

void pnfs_generic_rw_release(void *data)
{
 struct nfs_pgio_header *hdr = data;

 nfs_put_client(hdr->ds_clp);
 hdr->mds_ops->rpc_release(data);
}
