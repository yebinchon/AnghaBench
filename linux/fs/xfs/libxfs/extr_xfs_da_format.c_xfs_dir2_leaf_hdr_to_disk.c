
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xfs_dir3_icleaf_hdr {scalar_t__ magic; scalar_t__ count; scalar_t__ stale; int back; int forw; } ;
struct TYPE_3__ {void* magic; void* back; void* forw; } ;
struct TYPE_4__ {void* stale; void* count; TYPE_1__ info; } ;
struct xfs_dir2_leaf {TYPE_2__ hdr; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_LEAF1_MAGIC ;
 scalar_t__ XFS_DIR2_LEAFN_MAGIC ;
 void* cpu_to_be16 (scalar_t__) ;
 void* cpu_to_be32 (int ) ;

__attribute__((used)) static void
xfs_dir2_leaf_hdr_to_disk(
 struct xfs_dir2_leaf *to,
 struct xfs_dir3_icleaf_hdr *from)
{
 ASSERT(from->magic == XFS_DIR2_LEAF1_MAGIC ||
        from->magic == XFS_DIR2_LEAFN_MAGIC);

 to->hdr.info.forw = cpu_to_be32(from->forw);
 to->hdr.info.back = cpu_to_be32(from->back);
 to->hdr.info.magic = cpu_to_be16(from->magic);
 to->hdr.count = cpu_to_be16(from->count);
 to->hdr.stale = cpu_to_be16(from->stale);
}
