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
struct proc_dir_entry {scalar_t__ nlink; } ;
struct path {int /*<<< orphan*/  dentry; } ;
struct kstat {int dummy; } ;
struct inode {int dummy; } ;

/* Variables and functions */
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 struct inode* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(const struct path *path, struct kstat *stat,
			u32 request_mask, unsigned int query_flags)
{
	struct inode *inode = FUNC1(path->dentry);
	struct proc_dir_entry *de = FUNC0(inode);
	if (de && de->nlink)
		FUNC3(inode, de->nlink);

	FUNC2(inode, stat);
	return 0;
}