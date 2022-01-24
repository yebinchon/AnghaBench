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
struct cgroup_subsys_state {int dummy; } ;
struct cgroup_file {int /*<<< orphan*/  notify_timer; int /*<<< orphan*/ * kn; } ;
struct cgroup {int /*<<< orphan*/  kn; } ;
struct cftype {int file_offset; int /*<<< orphan*/  ss; } ;

/* Variables and functions */
 int CGROUP_FILE_NAME_MAX ; 
 struct cgroup_subsys_state* FUNC0 (struct cgroup*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cgroup_file_kn_lock ; 
 int /*<<< orphan*/  FUNC1 (struct cgroup*,struct cftype const*,char*) ; 
 int /*<<< orphan*/  cgroup_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct cgroup *cgrp, const struct cftype *cft)
{
	char name[CGROUP_FILE_NAME_MAX];

	FUNC4(&cgroup_mutex);

	if (cft->file_offset) {
		struct cgroup_subsys_state *css = FUNC0(cgrp, cft->ss);
		struct cgroup_file *cfile = (void *)css + cft->file_offset;

		FUNC5(&cgroup_file_kn_lock);
		cfile->kn = NULL;
		FUNC6(&cgroup_file_kn_lock);

		FUNC2(&cfile->notify_timer);
	}

	FUNC3(cgrp->kn, FUNC1(cgrp, cft, name));
}