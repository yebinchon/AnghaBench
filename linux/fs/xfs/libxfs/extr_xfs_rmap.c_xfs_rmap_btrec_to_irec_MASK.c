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
struct TYPE_2__ {int /*<<< orphan*/  rm_offset; int /*<<< orphan*/  rm_owner; int /*<<< orphan*/  rm_blockcount; int /*<<< orphan*/  rm_startblock; } ;
union xfs_btree_rec {TYPE_1__ rmap; } ;
struct xfs_rmap_irec {int /*<<< orphan*/  rm_owner; void* rm_blockcount; void* rm_startblock; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct xfs_rmap_irec*) ; 

int
FUNC3(
	union xfs_btree_rec	*rec,
	struct xfs_rmap_irec	*irec)
{
	irec->rm_startblock = FUNC0(rec->rmap.rm_startblock);
	irec->rm_blockcount = FUNC0(rec->rmap.rm_blockcount);
	irec->rm_owner = FUNC1(rec->rmap.rm_owner);
	return FUNC2(FUNC1(rec->rmap.rm_offset),
			irec);
}