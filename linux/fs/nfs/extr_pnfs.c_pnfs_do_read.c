
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_call_ops {int dummy; } ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs_pgio_mirror {int pg_recoalesce; int pg_list; } ;
struct nfs_pgio_header {TYPE_1__* mds_ops; int pages; int flags; } ;
struct nfs_pageio_descriptor {struct pnfs_layout_segment* pg_lseg; struct rpc_call_ops* pg_rpc_callops; } ;
typedef enum pnfs_try_status { ____Placeholder_pnfs_try_status } pnfs_try_status ;
struct TYPE_2__ {int (* rpc_release ) (struct nfs_pgio_header*) ;} ;


 int NFS_IOHDR_REDO ;



 int list_splice_init (int *,int *) ;
 struct nfs_pgio_mirror* nfs_pgio_current_mirror (struct nfs_pageio_descriptor*) ;
 int pnfs_read_through_mds (struct nfs_pageio_descriptor*,struct nfs_pgio_header*) ;
 int pnfs_try_to_read_data (struct nfs_pgio_header*,struct rpc_call_ops const*,struct pnfs_layout_segment*) ;
 int stub1 (struct nfs_pgio_header*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
pnfs_do_read(struct nfs_pageio_descriptor *desc, struct nfs_pgio_header *hdr)
{
 const struct rpc_call_ops *call_ops = desc->pg_rpc_callops;
 struct pnfs_layout_segment *lseg = desc->pg_lseg;
 enum pnfs_try_status trypnfs;

 trypnfs = pnfs_try_to_read_data(hdr, call_ops, lseg);
 switch (trypnfs) {
 case 129:
  pnfs_read_through_mds(desc, hdr);
 case 130:
  break;
 case 128:

  if (!test_and_set_bit(NFS_IOHDR_REDO, &hdr->flags)) {
   struct nfs_pgio_mirror *mirror = nfs_pgio_current_mirror(desc);
   list_splice_init(&hdr->pages, &mirror->pg_list);
   mirror->pg_recoalesce = 1;
  }
  hdr->mds_ops->rpc_release(hdr);
 }
}
