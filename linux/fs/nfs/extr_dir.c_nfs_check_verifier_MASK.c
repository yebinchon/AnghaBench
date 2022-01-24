#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_time; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dentry*) ; 
 int NFS_MOUNT_LOOKUP_CACHE_NONE ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *dir, struct dentry *dentry,
			      int rcu_walk)
{
	if (FUNC0(dentry))
		return 1;
	if (FUNC1(dir)->flags & NFS_MOUNT_LOOKUP_CACHE_NONE)
		return 0;
	if (!FUNC4(dir, dentry->d_time))
		return 0;
	/* Revalidate nfsi->cache_change_attribute before we declare a match */
	if (FUNC3(dir)) {
		if (rcu_walk)
			return 0;
		if (FUNC2(FUNC1(dir), dir) < 0)
			return 0;
	}
	if (!FUNC4(dir, dentry->d_time))
		return 0;
	return 1;
}