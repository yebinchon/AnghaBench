
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int completion_ops; int inode; } ;
struct nfs_pageio_descriptor {int dummy; } ;


 int nfs_pageio_init_read (struct nfs_pageio_descriptor*,int ,int,int ) ;
 int nfs_pageio_resend (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ;

int pnfs_read_done_resend_to_mds(struct nfs_pgio_header *hdr)
{
 struct nfs_pageio_descriptor pgio;


 nfs_pageio_init_read(&pgio, hdr->inode, 1, hdr->completion_ops);
 return nfs_pageio_resend(&pgio, hdr);
}
