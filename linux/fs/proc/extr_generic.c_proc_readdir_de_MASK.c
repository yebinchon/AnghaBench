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
struct proc_dir_entry {int mode; int /*<<< orphan*/  low_ino; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct file {int dummy; } ;
struct dir_context {int pos; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dir_context*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,struct dir_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct proc_dir_entry*) ; 
 struct proc_dir_entry* FUNC4 (struct proc_dir_entry*) ; 
 struct proc_dir_entry* FUNC5 (struct proc_dir_entry*) ; 
 int /*<<< orphan*/  proc_subdir_lock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct file *file, struct dir_context *ctx,
		    struct proc_dir_entry *de)
{
	int i;

	if (!FUNC1(file, ctx))
		return 0;

	i = ctx->pos - 2;
	FUNC6(&proc_subdir_lock);
	de = FUNC4(de);
	for (;;) {
		if (!de) {
			FUNC7(&proc_subdir_lock);
			return 0;
		}
		if (!i)
			break;
		de = FUNC5(de);
		i--;
	}

	do {
		struct proc_dir_entry *next;
		FUNC2(de);
		FUNC7(&proc_subdir_lock);
		if (!FUNC0(ctx, de->name, de->namelen,
			    de->low_ino, de->mode >> 12)) {
			FUNC3(de);
			return 0;
		}
		ctx->pos++;
		FUNC6(&proc_subdir_lock);
		next = FUNC5(de);
		FUNC3(de);
		de = next;
	} while (de);
	FUNC7(&proc_subdir_lock);
	return 1;
}