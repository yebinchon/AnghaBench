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
struct xfs_buf {int /*<<< orphan*/  b_sema; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC1 (struct xfs_buf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct xfs_buf*) ; 

void
FUNC4(
	struct xfs_buf		*bp)
{
	FUNC0(FUNC3(bp));

	FUNC2(&bp->b_sema);
	FUNC1(bp, _RET_IP_);
}