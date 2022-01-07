
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfs_dir3_icfree_hdr {void* magic; void* nused; void* nvalid; void* firstdb; } ;
struct TYPE_2__ {int magic; } ;
struct xfs_dir3_free_hdr {int nused; int nvalid; int firstdb; TYPE_1__ hdr; } ;
struct xfs_dir2_free {int dummy; } ;


 int ASSERT (int) ;
 void* XFS_DIR3_FREE_MAGIC ;
 void* be32_to_cpu (int ) ;

__attribute__((used)) static void
xfs_dir3_free_hdr_from_disk(
 struct xfs_dir3_icfree_hdr *to,
 struct xfs_dir2_free *from)
{
 struct xfs_dir3_free_hdr *hdr3 = (struct xfs_dir3_free_hdr *)from;

 to->magic = be32_to_cpu(hdr3->hdr.magic);
 to->firstdb = be32_to_cpu(hdr3->firstdb);
 to->nvalid = be32_to_cpu(hdr3->nvalid);
 to->nused = be32_to_cpu(hdr3->nused);

 ASSERT(to->magic == XFS_DIR3_FREE_MAGIC);
}
