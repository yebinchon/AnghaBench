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
struct cgroup {int fd; int /*<<< orphan*/  name; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cgroup*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 struct cgroup* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct cgroup *FUNC6(const char *name)
{
	struct cgroup *cgroup = FUNC4(sizeof(*cgroup));

	if (cgroup != NULL) {
		FUNC2(&cgroup->refcnt, 1);

		cgroup->name = FUNC3(name);
		if (!cgroup->name)
			goto out_err;
		cgroup->fd = FUNC1(name);
		if (cgroup->fd == -1)
			goto out_free_name;
	}

	return cgroup;

out_free_name:
	FUNC5(&cgroup->name);
out_err:
	FUNC0(cgroup);
	return NULL;
}