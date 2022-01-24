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
typedef  int u32 ;
struct path {TYPE_1__* dentry; } ;
struct kstat {int result_mask; int attributes_mask; int attributes; } ;
struct inode {int i_flags; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  GOSSIP_INODE_DEBUG ; 
 int /*<<< orphan*/  ORANGEFS_GETATTR_SIZE ; 
 int STATX_ATTR_APPEND ; 
 int STATX_ATTR_IMMUTABLE ; 
 int STATX_SIZE ; 
 int S_APPEND ; 
 int S_IMMUTABLE ; 
 int /*<<< orphan*/  FUNC0 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,TYPE_1__*,int) ; 
 int FUNC2 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC3(const struct path *path, struct kstat *stat,
		     u32 request_mask, unsigned int flags)
{
	int ret;
	struct inode *inode = path->dentry->d_inode;

	FUNC1(GOSSIP_INODE_DEBUG,
		     "orangefs_getattr: called on %pd mask %u\n",
		     path->dentry, request_mask);

	ret = FUNC2(inode,
	    request_mask & STATX_SIZE ? ORANGEFS_GETATTR_SIZE : 0);
	if (ret == 0) {
		FUNC0(inode, stat);

		/* override block size reported to stat */
		if (!(request_mask & STATX_SIZE))
			stat->result_mask &= ~STATX_SIZE;

		stat->attributes_mask = STATX_ATTR_IMMUTABLE |
		    STATX_ATTR_APPEND;
		if (inode->i_flags & S_IMMUTABLE)
			stat->attributes |= STATX_ATTR_IMMUTABLE;
		if (inode->i_flags & S_APPEND)
			stat->attributes |= STATX_ATTR_APPEND;
	}
	return ret;
}