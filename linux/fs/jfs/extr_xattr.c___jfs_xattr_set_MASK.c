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
typedef  int /*<<< orphan*/  tid_t ;
struct jfs_inode_info {int /*<<< orphan*/  commit_mutex; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;

/* Variables and functions */
 struct jfs_inode_info* FUNC0 (struct inode*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct inode*,char const*,void const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, const char *name,
			   const void *value, size_t size, int flags)
{
	struct jfs_inode_info *ji = FUNC0(inode);
	tid_t tid;
	int rc;

	tid = FUNC4(inode->i_sb, 0);
	FUNC2(&ji->commit_mutex);
	rc = FUNC1(tid, inode, name, value, size, flags);
	if (!rc)
		rc = FUNC5(tid, 1, &inode, 0);
	FUNC6(tid);
	FUNC3(&ji->commit_mutex);

	return rc;
}