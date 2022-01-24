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
struct xfs_buf {int /*<<< orphan*/  b_ioend_work; TYPE_1__* b_mount; } ;
struct TYPE_2__ {int /*<<< orphan*/  m_buf_workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xfs_buf_ioend_work ; 

__attribute__((used)) static void
FUNC2(
	struct xfs_buf	*bp)
{
	FUNC0(&bp->b_ioend_work, xfs_buf_ioend_work);
	FUNC1(bp->b_mount->m_buf_workqueue, &bp->b_ioend_work);
}