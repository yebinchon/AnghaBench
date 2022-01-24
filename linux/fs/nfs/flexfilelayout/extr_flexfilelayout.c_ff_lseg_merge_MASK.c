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
typedef  scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ iomode; scalar_t__ offset; int /*<<< orphan*/  length; } ;
struct pnfs_layout_segment {int /*<<< orphan*/  pls_flags; TYPE_1__ pls_range; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_LSEG_LAYOUTRETURN ; 
 int /*<<< orphan*/  NFS_LSEG_ROC ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC4(struct pnfs_layout_segment *new,
		struct pnfs_layout_segment *old)
{
	u64 new_end, old_end;

	if (FUNC3(NFS_LSEG_LAYOUTRETURN, &old->pls_flags))
		return false;
	if (new->pls_range.iomode != old->pls_range.iomode)
		return false;
	old_end = FUNC0(old->pls_range.offset,
			old->pls_range.length);
	if (old_end < new->pls_range.offset)
		return false;
	new_end = FUNC0(new->pls_range.offset,
			new->pls_range.length);
	if (new_end < old->pls_range.offset)
		return false;

	/* Mergeable: copy info from 'old' to 'new' */
	if (new_end < old_end)
		new_end = old_end;
	if (new->pls_range.offset < old->pls_range.offset)
		new->pls_range.offset = old->pls_range.offset;
	new->pls_range.length = FUNC1(new->pls_range.offset,
			new_end);
	if (FUNC3(NFS_LSEG_ROC, &old->pls_flags))
		FUNC2(NFS_LSEG_ROC, &new->pls_flags);
	return true;
}