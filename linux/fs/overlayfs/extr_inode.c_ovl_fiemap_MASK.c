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
typedef  int /*<<< orphan*/  u64 ;
struct inode {TYPE_1__* i_op; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_sb; } ;
struct fiemap_extent_info {int fi_flags; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int (* fiemap ) (struct inode*,struct fiemap_extent_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int EOPNOTSUPP ; 
 int FIEMAP_FLAG_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC1 (struct inode*) ; 
 struct cred* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cred const*) ; 
 int FUNC4 (struct inode*,struct fiemap_extent_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct fiemap_extent_info *fieinfo,
		      u64 start, u64 len)
{
	int err;
	struct inode *realinode = FUNC1(inode);
	const struct cred *old_cred;

	if (!realinode->i_op->fiemap)
		return -EOPNOTSUPP;

	old_cred = FUNC2(inode->i_sb);

	if (fieinfo->fi_flags & FIEMAP_FLAG_SYNC)
		FUNC0(realinode->i_mapping);

	err = realinode->i_op->fiemap(realinode, fieinfo, start, len);
	FUNC3(old_cred);

	return err;
}