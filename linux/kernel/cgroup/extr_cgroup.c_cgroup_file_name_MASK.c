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
struct cgroup_subsys {char* name; char* legacy_name; } ;
struct cgroup {TYPE_1__* root; } ;
struct cftype {int flags; int /*<<< orphan*/  name; struct cgroup_subsys* ss; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CFTYPE_DEBUG ; 
 int CFTYPE_NO_PREFIX ; 
 int /*<<< orphan*/  CGROUP_FILE_NAME_MAX ; 
 int CGRP_ROOT_NOPREFIX ; 
 scalar_t__ FUNC0 (struct cgroup*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC3(struct cgroup *cgrp, const struct cftype *cft,
			      char *buf)
{
	struct cgroup_subsys *ss = cft->ss;

	if (cft->ss && !(cft->flags & CFTYPE_NO_PREFIX) &&
	    !(cgrp->root->flags & CGRP_ROOT_NOPREFIX)) {
		const char *dbg = (cft->flags & CFTYPE_DEBUG) ? ".__DEBUG__." : "";

		FUNC1(buf, CGROUP_FILE_NAME_MAX, "%s%s.%s",
			 dbg, FUNC0(cgrp) ? ss->name : ss->legacy_name,
			 cft->name);
	} else {
		FUNC2(buf, cft->name, CGROUP_FILE_NAME_MAX);
	}
	return buf;
}