#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  i_mount; } ;
typedef  TYPE_1__ xfs_inode_t ;
struct TYPE_8__ {TYPE_1__* dp; } ;
typedef  TYPE_2__ xfs_attr_list_context_t ;
typedef  int /*<<< orphan*/  uint ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xs_attr_list ; 

int
FUNC5(
	xfs_attr_list_context_t *context)
{
	int error;
	xfs_inode_t *dp = context->dp;
	uint		lock_mode;

	FUNC1(dp->i_mount, xs_attr_list);

	if (FUNC0(dp->i_mount))
		return -EIO;

	lock_mode = FUNC3(dp);
	error = FUNC2(context);
	FUNC4(dp, lock_mode);
	return error;
}