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
struct proc_dir_entry {int dummy; } ;
struct inode {int /*<<< orphan*/  i_data; } ;
struct ctl_table_header {int dummy; } ;
struct TYPE_2__ {struct ctl_table_header* sysctl; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 struct proc_dir_entry* FUNC0 (struct inode*) ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_table_header*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct ctl_table_header*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct inode *inode)
{
	struct proc_dir_entry *de;
	struct ctl_table_header *head;

	FUNC7(&inode->i_data);
	FUNC3(inode);

	/* Stop tracking associated processes */
	FUNC6(FUNC1(inode)->pid);

	/* Let go of any associated proc directory entry */
	de = FUNC0(inode);
	if (de)
		FUNC4(de);

	head = FUNC1(inode)->sysctl;
	if (head) {
		FUNC2(FUNC1(inode)->sysctl, NULL);
		FUNC5(inode, head);
	}
}