#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int dummy; } ;
struct file {int f_mode; } ;
struct TYPE_4__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  default_hard; } ;
struct TYPE_6__ {TYPE_1__ mach; int /*<<< orphan*/  hard; } ;
struct TYPE_5__ {scalar_t__ busy; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 TYPE_3__ dmasound ; 
 int /*<<< orphan*/  dmasound_core_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 int shared_resource_owner ; 
 scalar_t__ shared_resources_initialised ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_2__ write_sq ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct file*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	int rc = 0;

	FUNC1(&dmasound_core_mutex);

	if (file->f_mode & FMODE_WRITE) {
		if (write_sq.busy)
			rc = FUNC4();

		FUNC5() ; /* make sure dma is stopped and all is quiet */
		FUNC6();
		write_sq.busy = 0;
	}

	if (file->f_mode & shared_resource_owner) { /* it's us that has them */
		shared_resource_owner = 0 ;
		shared_resources_initialised = 0 ;
		dmasound.hard = dmasound.mach.default_hard ;
	}

	FUNC0(dmasound.mach.owner);

#if 0 /* blocking open() */
	/* Wake up a process waiting for the queue being released.
	 * Note: There may be several processes waiting for a call
	 * to open() returning. */

	/* Iain: hmm I don't understand this next comment ... */
	/* There is probably a DOS atack here. They change the mode flag. */
	/* XXX add check here,*/
	read_sq_wake_up(file); /* checks f_mode */
	write_sq_wake_up(file); /* checks f_mode */
#endif /* blocking open() */

	FUNC2(&dmasound_core_mutex);

	return rc;
}