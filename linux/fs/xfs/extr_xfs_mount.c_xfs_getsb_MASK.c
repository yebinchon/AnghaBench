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
struct xfs_mount {struct xfs_buf* m_sb_bp; } ;
struct xfs_buf {int b_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int XBF_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_buf*) ; 

struct xfs_buf *
FUNC3(
	struct xfs_mount	*mp)
{
	struct xfs_buf		*bp = mp->m_sb_bp;

	FUNC2(bp);
	FUNC1(bp);
	FUNC0(bp->b_flags & XBF_DONE);
	return bp;
}