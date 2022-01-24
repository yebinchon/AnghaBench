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
typedef  int xfs_bmbt_rec_base_t ;
struct xfs_bmbt_rec {int /*<<< orphan*/  l1; int /*<<< orphan*/  l0; } ;
struct xfs_bmbt_irec {scalar_t__ br_state; int br_startoff; int br_blockcount; int br_startblock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BMBT_BLOCKCOUNT_BITLEN ; 
 scalar_t__ BMBT_STARTBLOCK_BITLEN ; 
 scalar_t__ BMBT_STARTOFF_BITLEN ; 
 scalar_t__ XFS_EXT_NORM ; 
 scalar_t__ XFS_EXT_UNWRITTEN ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 

void
FUNC4(
	struct xfs_bmbt_rec	*r,
	struct xfs_bmbt_irec	*s)
{
	int			extent_flag = (s->br_state != XFS_EXT_NORM);

	FUNC0(s->br_state == XFS_EXT_NORM || s->br_state == XFS_EXT_UNWRITTEN);
	FUNC0(!(s->br_startoff & FUNC2(64-BMBT_STARTOFF_BITLEN)));
	FUNC0(!(s->br_blockcount & FUNC2(64-BMBT_BLOCKCOUNT_BITLEN)));
	FUNC0(!(s->br_startblock & FUNC2(64-BMBT_STARTBLOCK_BITLEN)));

	FUNC1(
		((xfs_bmbt_rec_base_t)extent_flag << 63) |
		 ((xfs_bmbt_rec_base_t)s->br_startoff << 9) |
		 ((xfs_bmbt_rec_base_t)s->br_startblock >> 43), &r->l0);
	FUNC1(
		((xfs_bmbt_rec_base_t)s->br_startblock << 21) |
		 ((xfs_bmbt_rec_base_t)s->br_blockcount &
		  (xfs_bmbt_rec_base_t)FUNC3(21)), &r->l1);
}