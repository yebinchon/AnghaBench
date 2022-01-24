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
struct dentry {int d_flags; int /*<<< orphan*/  d_fsdata; } ;

/* Variables and functions */
 int DCACHE_NFSFS_RENAMED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct dentry *dentry)
{
	/* free cached devname value, if it survived that far */
	if (FUNC2(dentry->d_fsdata)) {
		if (dentry->d_flags & DCACHE_NFSFS_RENAMED)
			FUNC0(1);
		else
			FUNC1(dentry->d_fsdata);
	}
}