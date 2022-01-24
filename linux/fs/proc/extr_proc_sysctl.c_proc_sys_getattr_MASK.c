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
struct kstat {int mode; } ;
struct inode {int dummy; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int mode; } ;
struct TYPE_2__ {struct ctl_table* sysctl_entry; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ctl_table_header*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct ctl_table_header*) ; 
 int S_IFMT ; 
 struct inode* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct kstat*) ; 
 struct ctl_table_header* FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct ctl_table_header*) ; 

__attribute__((used)) static int FUNC7(const struct path *path, struct kstat *stat,
			    u32 request_mask, unsigned int query_flags)
{
	struct inode *inode = FUNC3(path->dentry);
	struct ctl_table_header *head = FUNC5(inode);
	struct ctl_table *table = FUNC1(inode)->sysctl_entry;

	if (FUNC0(head))
		return FUNC2(head);

	FUNC4(inode, stat);
	if (table)
		stat->mode = (stat->mode & S_IFMT) | table->mode;

	FUNC6(head);
	return 0;
}