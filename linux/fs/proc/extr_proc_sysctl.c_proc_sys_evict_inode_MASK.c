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
struct ctl_table_header {int /*<<< orphan*/  count; } ;
struct TYPE_2__ {int /*<<< orphan*/  sysctl_inodes; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ctl_table_header*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcu ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_lock ; 

void FUNC5(struct inode *inode, struct ctl_table_header *head)
{
	FUNC3(&sysctl_lock);
	FUNC1(&FUNC0(inode)->sysctl_inodes);
	if (!--head->count)
		FUNC2(head, rcu);
	FUNC4(&sysctl_lock);
}