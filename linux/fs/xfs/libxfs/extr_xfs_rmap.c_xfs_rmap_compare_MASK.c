#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xfs_rmap_irec {scalar_t__ rm_startblock; scalar_t__ rm_owner; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct xfs_rmap_irec const*) ; 

int
FUNC1(
	const struct xfs_rmap_irec	*a,
	const struct xfs_rmap_irec	*b)
{
	__u64				oa;
	__u64				ob;

	oa = FUNC0(a);
	ob = FUNC0(b);

	if (a->rm_startblock < b->rm_startblock)
		return -1;
	else if (a->rm_startblock > b->rm_startblock)
		return 1;
	else if (a->rm_owner < b->rm_owner)
		return -1;
	else if (a->rm_owner > b->rm_owner)
		return 1;
	else if (oa < ob)
		return -1;
	else if (oa > ob)
		return 1;
	else
		return 0;
}