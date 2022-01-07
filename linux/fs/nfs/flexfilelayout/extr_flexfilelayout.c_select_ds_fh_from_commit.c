
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct pnfs_layout_segment {int dummy; } ;
struct nfs_fh {int dummy; } ;
struct nfs4_ff_layout_segment {TYPE_1__** mirror_array; } ;
struct TYPE_2__ {struct nfs_fh* fh_versions; } ;


 struct nfs4_ff_layout_segment* FF_LAYOUT_LSEG (struct pnfs_layout_segment*) ;

__attribute__((used)) static struct nfs_fh *
select_ds_fh_from_commit(struct pnfs_layout_segment *lseg, u32 i)
{
 struct nfs4_ff_layout_segment *flseg = FF_LAYOUT_LSEG(lseg);




 return &flseg->mirror_array[i]->fh_versions[0];
}
