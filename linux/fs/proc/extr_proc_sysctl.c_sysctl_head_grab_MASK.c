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
struct ctl_table_header {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ENOENT ; 
 struct ctl_table_header* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_lock ; 
 int /*<<< orphan*/  FUNC4 (struct ctl_table_header*) ; 

__attribute__((used)) static struct ctl_table_header *FUNC5(struct ctl_table_header *head)
{
	FUNC0(!head);
	FUNC2(&sysctl_lock);
	if (!FUNC4(head))
		head = FUNC1(-ENOENT);
	FUNC3(&sysctl_lock);
	return head;
}