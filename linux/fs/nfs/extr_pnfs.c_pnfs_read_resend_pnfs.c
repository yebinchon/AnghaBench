
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tk_status; } ;
struct nfs_pgio_header {TYPE_1__ task; int completion_ops; int inode; int * lseg; int flags; } ;
struct nfs_pageio_descriptor {int dummy; } ;


 int NFS_IOHDR_REDO ;
 int nfs_pageio_init_read (struct nfs_pageio_descriptor*,int ,int,int ) ;
 int nfs_pageio_resend (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ;
 int pnfs_put_lseg (int *) ;
 int test_and_set_bit (int ,int *) ;

void pnfs_read_resend_pnfs(struct nfs_pgio_header *hdr)
{
 struct nfs_pageio_descriptor pgio;

 if (!test_and_set_bit(NFS_IOHDR_REDO, &hdr->flags)) {

  pnfs_put_lseg(hdr->lseg);
  hdr->lseg = ((void*)0);

  nfs_pageio_init_read(&pgio, hdr->inode, 0,
     hdr->completion_ops);
  hdr->task.tk_status = nfs_pageio_resend(&pgio, hdr);
 }
}
