
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rm_offset; int rm_owner; int rm_blockcount; int rm_startblock; } ;
union xfs_btree_rec {TYPE_1__ rmap; } ;
struct xfs_rmap_irec {int rm_owner; void* rm_blockcount; void* rm_startblock; } ;


 void* be32_to_cpu (int ) ;
 int be64_to_cpu (int ) ;
 int xfs_rmap_irec_offset_unpack (int ,struct xfs_rmap_irec*) ;

int
xfs_rmap_btrec_to_irec(
 union xfs_btree_rec *rec,
 struct xfs_rmap_irec *irec)
{
 irec->rm_startblock = be32_to_cpu(rec->rmap.rm_startblock);
 irec->rm_blockcount = be32_to_cpu(rec->rmap.rm_blockcount);
 irec->rm_owner = be64_to_cpu(rec->rmap.rm_owner);
 return xfs_rmap_irec_offset_unpack(be64_to_cpu(rec->rmap.rm_offset),
   irec);
}
