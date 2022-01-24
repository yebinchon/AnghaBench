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
struct timespec64 {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct file {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int S_CTIME ; 
 int S_MTIME ; 
 int S_VERSION ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 scalar_t__ FUNC3 (struct file*) ; 
 struct timespec64 FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct file*) ; 
 scalar_t__ FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct timespec64*) ; 
 int FUNC8 (struct inode*,struct timespec64*,int) ; 

int FUNC9(struct file *file)
{
	struct inode *inode = FUNC5(file);
	struct timespec64 now;
	int sync_it = 0;
	int ret;

	/* First try to exhaust all avenues to not sync */
	if (FUNC1(inode))
		return 0;

	now = FUNC4(inode);
	if (!FUNC7(&inode->i_mtime, &now))
		sync_it = S_MTIME;

	if (!FUNC7(&inode->i_ctime, &now))
		sync_it |= S_CTIME;

	if (FUNC0(inode) && FUNC6(inode))
		sync_it |= S_VERSION;

	if (!sync_it)
		return 0;

	/* Finally allowed to write? Takes lock. */
	if (FUNC3(file))
		return 0;

	ret = FUNC8(inode, &now, sync_it);
	FUNC2(file);

	return ret;
}