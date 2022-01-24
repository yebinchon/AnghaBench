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
struct task_struct {int dummy; } ;
struct proc_ns_operations {int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct dir_context {int pos; } ;

/* Variables and functions */
 int FUNC0 (struct proc_ns_operations**) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct dir_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ) ; 
 struct proc_ns_operations** ns_entries ; 
 int /*<<< orphan*/  FUNC4 (struct file*,struct dir_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct task_struct*,struct proc_ns_operations const*) ; 
 int /*<<< orphan*/  proc_ns_instantiate ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct file *file, struct dir_context *ctx)
{
	struct task_struct *task = FUNC3(FUNC2(file));
	const struct proc_ns_operations **entry, **last;

	if (!task)
		return -ENOENT;

	if (!FUNC1(file, ctx))
		goto out;
	if (ctx->pos >= 2 + FUNC0(ns_entries))
		goto out;
	entry = ns_entries + (ctx->pos - 2);
	last = &ns_entries[FUNC0(ns_entries) - 1];
	while (entry <= last) {
		const struct proc_ns_operations *ops = *entry;
		if (!FUNC4(file, ctx, ops->name, FUNC6(ops->name),
				     proc_ns_instantiate, task, ops))
			break;
		ctx->pos++;
		entry++;
	}
out:
	FUNC5(task);
	return 0;
}