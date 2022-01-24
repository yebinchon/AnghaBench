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
struct seq_file {struct kernfs_open_file* private; } ;
struct kernfs_ops {void* (* seq_next ) (struct seq_file*,void*,int /*<<< orphan*/ *) ;} ;
struct kernfs_open_file {int /*<<< orphan*/  kn; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct kernfs_ops* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,void*) ; 
 void* FUNC3 (struct seq_file*,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC4(struct seq_file *sf, void *v, loff_t *ppos)
{
	struct kernfs_open_file *of = sf->private;
	const struct kernfs_ops *ops = FUNC1(of->kn);

	if (ops->seq_next) {
		void *next = ops->seq_next(sf, v, ppos);
		/* see the comment above kernfs_seq_stop_active() */
		if (next == FUNC0(-ENODEV))
			FUNC2(sf, next);
		return next;
	} else {
		/*
		 * The same behavior and code as single_open(), always
		 * terminate after the initial read.
		 */
		++*ppos;
		return NULL;
	}
}