
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs4_ff_layout_segment {size_t mirror_array_cnt; struct nfs4_ff_layout_mirror** mirror_array; } ;
struct nfs4_ff_layout_mirror {int dummy; } ;


 struct nfs4_ff_layout_segment* FF_LAYOUT_LSEG (struct pnfs_layout_segment*) ;

__attribute__((used)) static inline struct nfs4_ff_layout_mirror *
FF_LAYOUT_COMP(struct pnfs_layout_segment *lseg, u32 idx)
{
 struct nfs4_ff_layout_segment *fls = FF_LAYOUT_LSEG(lseg);

 if (idx < fls->mirror_array_cnt)
  return fls->mirror_array[idx];
 return ((void*)0);
}
