
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pnfs_layout_segment {int pls_range; int pls_seq; } ;
struct pnfs_layout_range {int dummy; } ;


 scalar_t__ pnfs_seqid_is_newer (int ,scalar_t__) ;
 int pnfs_should_free_range (int *,struct pnfs_layout_range const*) ;

__attribute__((used)) static bool
pnfs_match_lseg_recall(const struct pnfs_layout_segment *lseg,
  const struct pnfs_layout_range *recall_range,
  u32 seq)
{
 if (seq != 0 && pnfs_seqid_is_newer(lseg->pls_seq, seq))
  return 0;
 if (recall_range == ((void*)0))
  return 1;
 return pnfs_should_free_range(&lseg->pls_range, recall_range);
}
