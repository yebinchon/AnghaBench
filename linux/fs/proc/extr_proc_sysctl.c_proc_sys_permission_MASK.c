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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int dummy; } ;
struct TYPE_2__ {struct ctl_table* sysctl_entry; } ;

/* Variables and functions */
 int EACCES ; 
 scalar_t__ FUNC0 (struct ctl_table_header*) ; 
 int MAY_EXEC ; 
 int MAY_NOT_BLOCK ; 
 int MAY_WRITE ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct ctl_table_header*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct ctl_table_header* FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_table_header*) ; 
 int FUNC6 (struct ctl_table_header*,struct ctl_table*,int) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, int mask)
{
	/*
	 * sysctl entries that are not writeable,
	 * are _NOT_ writeable, capabilities or not.
	 */
	struct ctl_table_header *head;
	struct ctl_table *table;
	int error;

	/* Executable files are not allowed under /proc/sys/ */
	if ((mask & MAY_EXEC) && FUNC3(inode->i_mode))
		return -EACCES;

	head = FUNC4(inode);
	if (FUNC0(head))
		return FUNC2(head);

	table = FUNC1(inode)->sysctl_entry;
	if (!table) /* global root - r-xr-xr-x */
		error = mask & MAY_WRITE ? -EACCES : 0;
	else /* Use the permissions on the sysctl table entry */
		error = FUNC6(head, table, mask & ~MAY_NOT_BLOCK);

	FUNC5(head);
	return error;
}