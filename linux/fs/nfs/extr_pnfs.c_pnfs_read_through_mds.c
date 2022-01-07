
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_pgio_mirror {int pg_recoalesce; int pg_list; } ;
struct nfs_pgio_header {TYPE_1__* completion_ops; int pages; int flags; } ;
struct nfs_pageio_descriptor {int dummy; } ;
struct TYPE_2__ {int (* completion ) (struct nfs_pgio_header*) ;} ;


 int NFS_IOHDR_REDO ;
 int list_splice_tail_init (int *,int *) ;
 int nfs_pageio_reset_read_mds (struct nfs_pageio_descriptor*) ;
 struct nfs_pgio_mirror* nfs_pgio_current_mirror (struct nfs_pageio_descriptor*) ;
 int stub1 (struct nfs_pgio_header*) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void
pnfs_read_through_mds(struct nfs_pageio_descriptor *desc,
  struct nfs_pgio_header *hdr)
{
 struct nfs_pgio_mirror *mirror = nfs_pgio_current_mirror(desc);

 if (!test_and_set_bit(NFS_IOHDR_REDO, &hdr->flags)) {
  list_splice_tail_init(&hdr->pages, &mirror->pg_list);
  nfs_pageio_reset_read_mds(desc);
  mirror->pg_recoalesce = 1;
 }
 hdr->completion_ops->completion(hdr);
}
