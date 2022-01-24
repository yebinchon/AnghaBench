#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xfs_dir3_icfree_hdr {scalar_t__ magic; scalar_t__ firstdb; scalar_t__ nvalid; scalar_t__ nused; } ;
struct TYPE_2__ {void* magic; } ;
struct xfs_dir3_free_hdr {void* nused; void* nvalid; void* firstdb; TYPE_1__ hdr; } ;
struct xfs_dir2_free {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_DIR3_FREE_MAGIC ; 
 void* FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2(
	struct xfs_dir2_free		*to,
	struct xfs_dir3_icfree_hdr	*from)
{
	struct xfs_dir3_free_hdr *hdr3 = (struct xfs_dir3_free_hdr *)to;

	FUNC0(from->magic == XFS_DIR3_FREE_MAGIC);

	hdr3->hdr.magic = FUNC1(from->magic);
	hdr3->firstdb = FUNC1(from->firstdb);
	hdr3->nvalid = FUNC1(from->nvalid);
	hdr3->nused = FUNC1(from->nused);
}