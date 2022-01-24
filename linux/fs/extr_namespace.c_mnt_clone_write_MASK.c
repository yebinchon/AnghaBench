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
struct vfsmount {int dummy; } ;

/* Variables and functions */
 int EROFS ; 
 scalar_t__ FUNC0 (struct vfsmount*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct vfsmount*) ; 

int FUNC5(struct vfsmount *mnt)
{
	/* superblock may be r/o */
	if (FUNC0(mnt))
		return -EROFS;
	FUNC2();
	FUNC1(FUNC4(mnt));
	FUNC3();
	return 0;
}