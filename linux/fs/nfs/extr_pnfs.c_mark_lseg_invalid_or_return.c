
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnfs_layout_segment {int pls_layout; } ;
struct list_head {int dummy; } ;


 int mark_lseg_invalid (struct pnfs_layout_segment*,struct list_head*) ;
 int pnfs_cache_lseg_for_layoutreturn (int ,struct pnfs_layout_segment*) ;

__attribute__((used)) static int
mark_lseg_invalid_or_return(struct pnfs_layout_segment *lseg,
  struct list_head *tmp_list)
{
 if (!mark_lseg_invalid(lseg, tmp_list))
  return 0;
 pnfs_cache_lseg_for_layoutreturn(lseg->pls_layout, lseg);
 return 1;
}
