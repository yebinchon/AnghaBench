
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* context; } ;
struct nfs_pgio_header {TYPE_2__ args; int completion_ops; int inode; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct TYPE_3__ {int flags; } ;


 int FLUSH_STABLE ;
 int NFS_CONTEXT_RESEND_WRITES ;
 int nfs_pageio_init_write (struct nfs_pageio_descriptor*,int ,int ,int,int ) ;
 int nfs_pageio_resend (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ;
 int set_bit (int ,int *) ;

int pnfs_write_done_resend_to_mds(struct nfs_pgio_header *hdr)
{
 struct nfs_pageio_descriptor pgio;


 nfs_pageio_init_write(&pgio, hdr->inode, FLUSH_STABLE, 1,
         hdr->completion_ops);
 set_bit(NFS_CONTEXT_RESEND_WRITES, &hdr->args.context->flags);
 return nfs_pageio_resend(&pgio, hdr);
}
