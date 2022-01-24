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
struct xfs_dir3_icfree_hdr {scalar_t__ magic; void* nused; void* nvalid; void* firstdb; } ;
struct TYPE_2__ {int /*<<< orphan*/  nused; int /*<<< orphan*/  nvalid; int /*<<< orphan*/  firstdb; int /*<<< orphan*/  magic; } ;
struct xfs_dir2_free {TYPE_1__ hdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ XFS_DIR2_FREE_MAGIC ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(
	struct xfs_dir3_icfree_hdr	*to,
	struct xfs_dir2_free		*from)
{
	to->magic = FUNC1(from->hdr.magic);
	to->firstdb = FUNC1(from->hdr.firstdb);
	to->nvalid = FUNC1(from->hdr.nvalid);
	to->nused = FUNC1(from->hdr.nused);
	FUNC0(to->magic == XFS_DIR2_FREE_MAGIC);
}