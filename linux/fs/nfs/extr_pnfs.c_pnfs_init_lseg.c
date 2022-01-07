
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pnfs_layout_range {int dummy; } ;
struct pnfs_layout_segment {int pls_seq; struct pnfs_layout_range pls_range; struct pnfs_layout_hdr* pls_layout; int pls_flags; int pls_refcount; int pls_lc_list; int pls_list; } ;
struct pnfs_layout_hdr {int dummy; } ;
struct TYPE_3__ {int seqid; } ;
typedef TYPE_1__ nfs4_stateid ;


 int INIT_LIST_HEAD (int *) ;
 int NFS_LSEG_VALID ;
 int be32_to_cpu (int ) ;
 int refcount_set (int *,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void
pnfs_init_lseg(struct pnfs_layout_hdr *lo, struct pnfs_layout_segment *lseg,
  const struct pnfs_layout_range *range,
  const nfs4_stateid *stateid)
{
 INIT_LIST_HEAD(&lseg->pls_list);
 INIT_LIST_HEAD(&lseg->pls_lc_list);
 refcount_set(&lseg->pls_refcount, 1);
 set_bit(NFS_LSEG_VALID, &lseg->pls_flags);
 lseg->pls_layout = lo;
 lseg->pls_range = *range;
 lseg->pls_seq = be32_to_cpu(stateid->seqid);
}
