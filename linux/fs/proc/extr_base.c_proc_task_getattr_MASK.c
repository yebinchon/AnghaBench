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
typedef  int /*<<< orphan*/  u32 ;
struct task_struct {int dummy; } ;
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int /*<<< orphan*/  nlink; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct inode* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct kstat*) ; 
 scalar_t__ FUNC2 (struct task_struct*) ; 
 struct task_struct* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 

__attribute__((used)) static int FUNC5(const struct path *path, struct kstat *stat,
			     u32 request_mask, unsigned int query_flags)
{
	struct inode *inode = FUNC0(path->dentry);
	struct task_struct *p = FUNC3(inode);
	FUNC1(inode, stat);

	if (p) {
		stat->nlink += FUNC2(p);
		FUNC4(p);
	}

	return 0;
}