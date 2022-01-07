
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int magic; int back; int forw; } ;
struct TYPE_4__ {TYPE_1__ hdr; } ;
struct xfs_dir3_leaf_hdr {int stale; int count; TYPE_2__ info; } ;
struct xfs_dir3_icleaf_hdr {void* magic; void* stale; void* count; void* back; void* forw; } ;
struct xfs_dir2_leaf {int dummy; } ;


 int ASSERT (int) ;
 void* XFS_DIR3_LEAF1_MAGIC ;
 void* XFS_DIR3_LEAFN_MAGIC ;
 void* be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;

__attribute__((used)) static void
xfs_dir3_leaf_hdr_from_disk(
 struct xfs_dir3_icleaf_hdr *to,
 struct xfs_dir2_leaf *from)
{
 struct xfs_dir3_leaf_hdr *hdr3 = (struct xfs_dir3_leaf_hdr *)from;

 to->forw = be32_to_cpu(hdr3->info.hdr.forw);
 to->back = be32_to_cpu(hdr3->info.hdr.back);
 to->magic = be16_to_cpu(hdr3->info.hdr.magic);
 to->count = be16_to_cpu(hdr3->count);
 to->stale = be16_to_cpu(hdr3->stale);

 ASSERT(to->magic == XFS_DIR3_LEAF1_MAGIC ||
        to->magic == XFS_DIR3_LEAFN_MAGIC);
}
