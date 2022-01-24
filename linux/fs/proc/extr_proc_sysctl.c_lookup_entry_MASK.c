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
struct ctl_table {int dummy; } ;
struct ctl_dir {int dummy; } ;

/* Variables and functions */
 struct ctl_table* FUNC0 (struct ctl_table_header**,struct ctl_dir*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sysctl_lock ; 
 scalar_t__ FUNC3 (struct ctl_table_header*) ; 

__attribute__((used)) static struct ctl_table *FUNC4(struct ctl_table_header **phead,
				      struct ctl_dir *dir,
				      const char *name, int namelen)
{
	struct ctl_table_header *head;
	struct ctl_table *entry;

	FUNC1(&sysctl_lock);
	entry = FUNC0(&head, dir, name, namelen);
	if (entry && FUNC3(head))
		*phead = head;
	else
		entry = NULL;
	FUNC2(&sysctl_lock);
	return entry;
}