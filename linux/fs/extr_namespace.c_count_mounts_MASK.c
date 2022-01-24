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
struct mount {int dummy; } ;
struct mnt_namespace {unsigned int mounts; unsigned int pending_mounts; } ;

/* Variables and functions */
 int ENOSPC ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 struct mount* FUNC1 (struct mount*,struct mount*) ; 
 int /*<<< orphan*/  sysctl_mount_max ; 

int FUNC2(struct mnt_namespace *ns, struct mount *mnt)
{
	unsigned int max = FUNC0(sysctl_mount_max);
	unsigned int mounts = 0, old, pending, sum;
	struct mount *p;

	for (p = mnt; p; p = FUNC1(p, mnt))
		mounts++;

	old = ns->mounts;
	pending = ns->pending_mounts;
	sum = old + pending;
	if ((old > sum) ||
	    (pending > sum) ||
	    (max < sum) ||
	    (mounts > (max - sum)))
		return -ENOSPC;

	ns->pending_mounts = pending + mounts;
	return 0;
}