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
struct xfs_inumbers {int dummy; } ;
struct xfs_inogrp {int dummy; } ;
struct xfs_ibulk {int /*<<< orphan*/  ubuffer; } ;

/* Variables and functions */
 int EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct xfs_inogrp*,int) ; 
 int FUNC1 (struct xfs_ibulk*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct xfs_inogrp*,struct xfs_inumbers const*) ; 

int
FUNC3(
	struct xfs_ibulk		*breq,
	const struct xfs_inumbers	*igrp)
{
	struct xfs_inogrp		ig1;

	FUNC2(&ig1, igrp);
	if (FUNC0(breq->ubuffer, &ig1, sizeof(struct xfs_inogrp)))
		return -EFAULT;
	return FUNC1(breq, sizeof(struct xfs_inogrp));
}