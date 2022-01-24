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
struct file {int /*<<< orphan*/  f_lock; int /*<<< orphan*/  f_flags; } ;
struct fasync_struct {int /*<<< orphan*/  fa_rcu; struct fasync_struct* fa_next; int /*<<< orphan*/  fa_lock; struct file* fa_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  FASYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fasync_free_rcu ; 
 int /*<<< orphan*/  fasync_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct file *filp, struct fasync_struct **fapp)
{
	struct fasync_struct *fa, **fp;
	int result = 0;

	FUNC1(&filp->f_lock);
	FUNC1(&fasync_lock);
	for (fp = fapp; (fa = *fp) != NULL; fp = &fa->fa_next) {
		if (fa->fa_file != filp)
			continue;

		FUNC3(&fa->fa_lock);
		fa->fa_file = NULL;
		FUNC4(&fa->fa_lock);

		*fp = fa->fa_next;
		FUNC0(&fa->fa_rcu, fasync_free_rcu);
		filp->f_flags &= ~FASYNC;
		result = 1;
		break;
	}
	FUNC2(&fasync_lock);
	FUNC2(&filp->f_lock);
	return result;
}