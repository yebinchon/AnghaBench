
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_dir3_icleaf_hdr {scalar_t__ magic; void* stale; void* count; void* back; void* forw; } ;
struct TYPE_4__ {int magic; int back; int forw; } ;
struct TYPE_3__ {int stale; int count; TYPE_2__ info; } ;
struct xfs_dir2_leaf {TYPE_1__ hdr; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_LEAF1_MAGIC ;
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;

__attribute__((used)) static void
xfs_dir2_leaf_hdr_from_disk(
 struct xfs_dir3_icleaf_hdr *to,
 struct xfs_dir2_leaf *from)
{
 to->forw = be32_to_cpu(from->hdr.info.forw);
 to->back = be32_to_cpu(from->hdr.info.back);
 to->magic = be16_to_cpu(from->hdr.info.magic);
 to->count = be16_to_cpu(from->hdr.count);
 to->stale = be16_to_cpu(from->hdr.stale);

 ASSERT(to->magic == XFS_DIR2_LEAF1_MAGIC ||
        to->magic == XFS_DIR2_LEAFN_MAGIC);
}
