
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_pgio_header {TYPE_1__* rw_ops; } ;
struct TYPE_2__ {int (* rw_free_header ) (struct nfs_pgio_header*) ;} ;


 int nfs_pgio_data_destroy (struct nfs_pgio_header*) ;
 int stub1 (struct nfs_pgio_header*) ;

void nfs_pgio_header_free(struct nfs_pgio_header *hdr)
{
 nfs_pgio_data_destroy(hdr);
 hdr->rw_ops->rw_free_header(hdr);
}
