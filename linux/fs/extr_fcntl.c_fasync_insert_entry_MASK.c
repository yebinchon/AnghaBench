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
struct fasync_struct {int fa_fd; struct fasync_struct* fa_next; struct file* fa_file; int /*<<< orphan*/  magic; int /*<<< orphan*/  fa_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FASYNC ; 
 int /*<<< orphan*/  FASYNC_MAGIC ; 
 int /*<<< orphan*/  fasync_lock ; 
 int /*<<< orphan*/  FUNC0 (struct fasync_struct*,struct fasync_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct fasync_struct *FUNC6(int fd, struct file *filp, struct fasync_struct **fapp, struct fasync_struct *new)
{
        struct fasync_struct *fa, **fp;

	FUNC2(&filp->f_lock);
	FUNC2(&fasync_lock);
	for (fp = fapp; (fa = *fp) != NULL; fp = &fa->fa_next) {
		if (fa->fa_file != filp)
			continue;

		FUNC4(&fa->fa_lock);
		fa->fa_fd = fd;
		FUNC5(&fa->fa_lock);
		goto out;
	}

	FUNC1(&new->fa_lock);
	new->magic = FASYNC_MAGIC;
	new->fa_file = filp;
	new->fa_fd = fd;
	new->fa_next = *fapp;
	FUNC0(*fapp, new);
	filp->f_flags |= FASYNC;

out:
	FUNC3(&fasync_lock);
	FUNC3(&filp->f_lock);
	return fa;
}