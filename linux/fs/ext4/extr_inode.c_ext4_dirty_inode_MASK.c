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
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT4_HT_INODE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int I_DIRTY_TIME ; 
 int /*<<< orphan*/ * FUNC1 (struct inode*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct inode*) ; 

void FUNC4(struct inode *inode, int flags)
{
	handle_t *handle;

	if (flags == I_DIRTY_TIME)
		return;
	handle = FUNC1(inode, EXT4_HT_INODE, 2);
	if (FUNC0(handle))
		goto out;

	FUNC3(handle, inode);

	FUNC2(handle);
out:
	return;
}