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
struct kallsym_iter {int /*<<< orphan*/  show_value; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct kallsym_iter* FUNC0 (struct file*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  kallsyms_op ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct kallsym_iter*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	/*
	 * We keep iterator in m->private, since normal case is to
	 * s_start from where we left off, so we avoid doing
	 * using get_symbol_offset for every symbol.
	 */
	struct kallsym_iter *iter;
	iter = FUNC0(file, &kallsyms_op, sizeof(*iter));
	if (!iter)
		return -ENOMEM;
	FUNC2(iter, 0);

	iter->show_value = FUNC1();
	return 0;
}