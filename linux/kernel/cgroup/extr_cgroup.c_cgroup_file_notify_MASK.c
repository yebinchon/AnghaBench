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
struct cgroup_file {unsigned long notified_at; scalar_t__ kn; int /*<<< orphan*/  notify_timer; } ;

/* Variables and functions */
 unsigned long CGROUP_FILE_NOTIFY_MIN_INTV ; 
 int /*<<< orphan*/  cgroup_file_kn_lock ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC3 (unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct cgroup_file *cfile)
{
	unsigned long flags;

	FUNC1(&cgroup_file_kn_lock, flags);
	if (cfile->kn) {
		unsigned long last = cfile->notified_at;
		unsigned long next = last + CGROUP_FILE_NOTIFY_MIN_INTV;

		if (FUNC3(jiffies, last, next)) {
			FUNC4(&cfile->notify_timer, next);
		} else {
			FUNC0(cfile->kn);
			cfile->notified_at = jiffies;
		}
	}
	FUNC2(&cgroup_file_kn_lock, flags);
}