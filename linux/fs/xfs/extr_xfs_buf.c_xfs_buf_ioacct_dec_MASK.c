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
struct xfs_buf {int /*<<< orphan*/  b_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xfs_buf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void
FUNC3(
	struct xfs_buf	*bp)
{
	FUNC1(&bp->b_lock);
	FUNC0(bp);
	FUNC2(&bp->b_lock);
}