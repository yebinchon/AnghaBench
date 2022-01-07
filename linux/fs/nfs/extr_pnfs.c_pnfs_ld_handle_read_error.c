
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tk_status; } ;
struct nfs_pgio_header {TYPE_2__ task; int flags; int inode; int pnfs_error; } ;
struct TYPE_6__ {TYPE_1__* pnfs_curr_ld; } ;
struct TYPE_4__ {int flags; } ;


 int NFS_IOHDR_REDO ;
 TYPE_3__* NFS_SERVER (int ) ;
 int PNFS_LAYOUTRET_ON_ERROR ;
 int dprintk (char*,int ) ;
 int pnfs_read_done_resend_to_mds (struct nfs_pgio_header*) ;
 int pnfs_return_layout (int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void pnfs_ld_handle_read_error(struct nfs_pgio_header *hdr)
{
 dprintk("pnfs read error = %d\n", hdr->pnfs_error);
 if (NFS_SERVER(hdr->inode)->pnfs_curr_ld->flags &
     PNFS_LAYOUTRET_ON_ERROR) {
  pnfs_return_layout(hdr->inode);
 }
 if (!test_and_set_bit(NFS_IOHDR_REDO, &hdr->flags))
  hdr->task.tk_status = pnfs_read_done_resend_to_mds(hdr);
}
