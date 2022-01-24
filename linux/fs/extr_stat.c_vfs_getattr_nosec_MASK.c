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
typedef  int /*<<< orphan*/  u32 ;
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int /*<<< orphan*/  attributes; int /*<<< orphan*/  result_mask; } ;
struct inode {TYPE_1__* i_op; } ;
struct TYPE_2__ {int (* getattr ) (struct path const*,struct kstat*,int /*<<< orphan*/ ,unsigned int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 unsigned int KSTAT_QUERY_FLAGS ; 
 int /*<<< orphan*/  STATX_ALL ; 
 int /*<<< orphan*/  STATX_ATIME ; 
 int /*<<< orphan*/  STATX_ATTR_AUTOMOUNT ; 
 int /*<<< orphan*/  STATX_BASIC_STATS ; 
 struct inode* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC4 (struct kstat*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct path const*,struct kstat*,int /*<<< orphan*/ ,unsigned int) ; 

int FUNC6(const struct path *path, struct kstat *stat,
		      u32 request_mask, unsigned int query_flags)
{
	struct inode *inode = FUNC2(path->dentry);

	FUNC4(stat, 0, sizeof(*stat));
	stat->result_mask |= STATX_BASIC_STATS;
	request_mask &= STATX_ALL;
	query_flags &= KSTAT_QUERY_FLAGS;

	/* allow the fs to override these if it really wants to */
	if (FUNC1(inode))
		stat->result_mask &= ~STATX_ATIME;
	if (FUNC0(inode))
		stat->attributes |= STATX_ATTR_AUTOMOUNT;

	if (inode->i_op->getattr)
		return inode->i_op->getattr(path, stat, request_mask,
					    query_flags);

	FUNC3(inode, stat);
	return 0;
}