#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct file {int dummy; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {long max_files; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  ENFILE ; 
 struct file* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct file*) ; 
 struct file* FUNC2 (int,struct cred const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ files_stat ; 
 int /*<<< orphan*/  FUNC4 () ; 
 long FUNC5 () ; 
 int /*<<< orphan*/  nr_files ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

struct file *FUNC9(int flags, const struct cred *cred)
{
	static long old_max;
	struct file *f;

	/*
	 * Privileged users can go above max_files
	 */
	if (FUNC5() >= files_stat.max_files && !FUNC3(CAP_SYS_ADMIN)) {
		/*
		 * percpu_counters are inaccurate.  Do an expensive check before
		 * we go and fail.
		 */
		if (FUNC7(&nr_files) >= files_stat.max_files)
			goto over;
	}

	f = FUNC2(flags, cred);
	if (!FUNC1(f))
		FUNC6(&nr_files);

	return f;

over:
	/* Ran out of filps - report that */
	if (FUNC5() > old_max) {
		FUNC8("VFS: file-max limit %lu reached\n", FUNC4());
		old_max = FUNC5();
	}
	return FUNC0(-ENFILE);
}