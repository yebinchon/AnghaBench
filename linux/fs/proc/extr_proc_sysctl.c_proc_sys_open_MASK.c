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
struct inode {int dummy; } ;
struct file {int /*<<< orphan*/  private_data; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {scalar_t__ poll; } ;
struct TYPE_2__ {struct ctl_table* sysctl_entry; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ctl_table_header*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct ctl_table_header*) ; 
 struct ctl_table_header* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct ctl_table_header*) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filp)
{
	struct ctl_table_header *head = FUNC3(inode);
	struct ctl_table *table = FUNC1(inode)->sysctl_entry;

	/* sysctl was unregistered */
	if (FUNC0(head))
		return FUNC2(head);

	if (table->poll)
		filp->private_data = FUNC4(table->poll);

	FUNC5(head);

	return 0;
}