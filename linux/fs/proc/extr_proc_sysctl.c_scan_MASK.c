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
struct dir_context {unsigned long pos; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int /*<<< orphan*/  mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct file*,struct dir_context*,struct ctl_table_header*,struct ctl_table*) ; 
 int FUNC2 (struct file*,struct dir_context*,struct ctl_table_header*,struct ctl_table*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ctl_table_header *head, struct ctl_table *table,
		unsigned long *pos, struct file *file,
		struct dir_context *ctx)
{
	bool res;

	if ((*pos)++ < ctx->pos)
		return true;

	if (FUNC3(FUNC0(table->mode)))
		res = FUNC2(file, ctx, head, table);
	else
		res = FUNC1(file, ctx, head, table);

	if (res)
		ctx->pos = *pos;

	return res;
}