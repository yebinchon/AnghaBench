
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_dir3_icfree_hdr {scalar_t__ magic; scalar_t__ firstdb; scalar_t__ nvalid; scalar_t__ nused; } ;
struct TYPE_2__ {void* magic; } ;
struct xfs_dir3_free_hdr {void* nused; void* nvalid; void* firstdb; TYPE_1__ hdr; } ;
struct xfs_dir2_free {int dummy; } ;


 int ASSERT (int) ;
 scalar_t__ XFS_DIR3_FREE_MAGIC ;
 void* cpu_to_be32 (scalar_t__) ;

__attribute__((used)) static void
xfs_dir3_free_hdr_to_disk(
 struct xfs_dir2_free *to,
 struct xfs_dir3_icfree_hdr *from)
{
 struct xfs_dir3_free_hdr *hdr3 = (struct xfs_dir3_free_hdr *)to;

 ASSERT(from->magic == XFS_DIR3_FREE_MAGIC);

 hdr3->hdr.magic = cpu_to_be32(from->magic);
 hdr3->firstdb = cpu_to_be32(from->firstdb);
 hdr3->nvalid = cpu_to_be32(from->nvalid);
 hdr3->nused = cpu_to_be32(from->nused);
}
