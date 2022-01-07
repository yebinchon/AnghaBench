
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_dir3_icfree_hdr {scalar_t__ magic; void* nused; void* nvalid; void* firstdb; } ;
struct TYPE_2__ {int nused; int nvalid; int firstdb; int magic; } ;
struct xfs_dir2_free {TYPE_1__ hdr; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR2_FREE_MAGIC ;
 void* be32_to_cpu (int ) ;

__attribute__((used)) static void
xfs_dir2_free_hdr_from_disk(
 struct xfs_dir3_icfree_hdr *to,
 struct xfs_dir2_free *from)
{
 to->magic = be32_to_cpu(from->hdr.magic);
 to->firstdb = be32_to_cpu(from->hdr.firstdb);
 to->nvalid = be32_to_cpu(from->hdr.nvalid);
 to->nused = be32_to_cpu(from->hdr.nused);
 ASSERT(to->magic == XFS_DIR2_FREE_MAGIC);
}
