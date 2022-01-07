
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pgio_header {int flags; int lseg; int task; } ;


 int NFS_IOHDR_RESEND_MDS ;
 int NFS_IOHDR_RESEND_PNFS ;
 int ff_layout_read_record_layoutstats_done (int *,struct nfs_pgio_header*) ;
 int ff_layout_reset_read (struct nfs_pgio_header*) ;
 int ff_layout_send_layouterror (int ) ;
 int pnfs_generic_rw_release (void*) ;
 int pnfs_read_resend_pnfs (struct nfs_pgio_header*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ff_layout_read_release(void *data)
{
 struct nfs_pgio_header *hdr = data;

 ff_layout_read_record_layoutstats_done(&hdr->task, hdr);
 if (test_bit(NFS_IOHDR_RESEND_PNFS, &hdr->flags)) {
  ff_layout_send_layouterror(hdr->lseg);
  pnfs_read_resend_pnfs(hdr);
 } else if (test_bit(NFS_IOHDR_RESEND_MDS, &hdr->flags))
  ff_layout_reset_read(hdr);
 pnfs_generic_rw_release(data);
}
