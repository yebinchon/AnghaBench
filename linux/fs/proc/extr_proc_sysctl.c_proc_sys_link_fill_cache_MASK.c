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
struct file {int dummy; } ;
struct dir_context {int dummy; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ctl_table_header*) ; 
 int FUNC1 (struct file*,struct dir_context*,struct ctl_table_header*,struct ctl_table*) ; 
 scalar_t__ FUNC2 (struct ctl_table_header**,struct ctl_table**) ; 
 int /*<<< orphan*/  FUNC3 (struct ctl_table_header*) ; 
 struct ctl_table_header* FUNC4 (struct ctl_table_header*) ; 

__attribute__((used)) static bool FUNC5(struct file *file,
				    struct dir_context *ctx,
				    struct ctl_table_header *head,
				    struct ctl_table *table)
{
	bool ret = true;

	head = FUNC4(head);
	if (FUNC0(head))
		return false;

	/* It is not an error if we can not follow the link ignore it */
	if (FUNC2(&head, &table))
		goto out;

	ret = FUNC1(file, ctx, head, table);
out:
	FUNC3(head);
	return ret;
}