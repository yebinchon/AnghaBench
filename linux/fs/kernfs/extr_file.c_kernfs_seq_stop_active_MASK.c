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
struct kernfs_ops {int /*<<< orphan*/  (* seq_stop ) (struct seq_file*,void*) ;} ;
struct kernfs_open_file {int /*<<< orphan*/  kn; } ;

/* Variables and functions */
 struct kernfs_ops* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,void*) ; 

__attribute__((used)) static void FUNC3(struct seq_file *sf, void *v)
{
	struct kernfs_open_file *of = sf->private;
	const struct kernfs_ops *ops = FUNC0(of->kn);

	if (ops->seq_stop)
		ops->seq_stop(sf, v);
	FUNC1(of->kn);
}