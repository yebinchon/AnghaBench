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
struct kernfs_ops {void* (* seq_start ) (struct seq_file*,int /*<<< orphan*/ *) ;} ;
struct kernfs_open_file {int /*<<< orphan*/  kn; int /*<<< orphan*/  mutex; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct kernfs_ops* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (struct seq_file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC6(struct seq_file *sf, loff_t *ppos)
{
	struct kernfs_open_file *of = sf->private;
	const struct kernfs_ops *ops;

	/*
	 * @of->mutex nests outside active ref and is primarily to ensure that
	 * the ops aren't called concurrently for the same open file.
	 */
	FUNC4(&of->mutex);
	if (!FUNC1(of->kn))
		return FUNC0(-ENODEV);

	ops = FUNC2(of->kn);
	if (ops->seq_start) {
		void *next = ops->seq_start(sf, ppos);
		/* see the comment above kernfs_seq_stop_active() */
		if (next == FUNC0(-ENODEV))
			FUNC3(sf, next);
		return next;
	} else {
		/*
		 * The same behavior and code as single_open().  Returns
		 * !NULL if pos is at the beginning; otherwise, NULL.
		 */
		return NULL + !*ppos;
	}
}