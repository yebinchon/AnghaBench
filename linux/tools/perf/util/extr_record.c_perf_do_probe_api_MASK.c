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
struct TYPE_2__ {int /*<<< orphan*/  attr; } ;
struct evsel {TYPE_1__ core; } ;
struct evlist {int dummy; } ;
typedef  int /*<<< orphan*/  (* setup_probe_fn_t ) (struct evsel*) ;
typedef  int pid_t ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 int EAGAIN ; 
 scalar_t__ EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (struct evlist*) ; 
 struct evsel* FUNC2 (struct evlist*) ; 
 struct evlist* FUNC3 () ; 
 scalar_t__ FUNC4 (struct evlist*,char const*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int,unsigned long) ; 

__attribute__((used)) static int FUNC7(setup_probe_fn_t fn, int cpu, const char *str)
{
	struct evlist *evlist;
	struct evsel *evsel;
	unsigned long flags = FUNC5();
	int err = -EAGAIN, fd;
	static pid_t pid = -1;

	evlist = FUNC3();
	if (!evlist)
		return -ENOMEM;

	if (FUNC4(evlist, str, NULL))
		goto out_delete;

	evsel = FUNC2(evlist);

	while (1) {
		fd = FUNC6(&evsel->core.attr, pid, cpu, -1, flags);
		if (fd < 0) {
			if (pid == -1 && errno == EACCES) {
				pid = 0;
				continue;
			}
			goto out_delete;
		}
		break;
	}
	FUNC0(fd);

	fn(evsel);

	fd = FUNC6(&evsel->core.attr, pid, cpu, -1, flags);
	if (fd < 0) {
		if (errno == EINVAL)
			err = -EINVAL;
		goto out_delete;
	}
	FUNC0(fd);
	err = 0;

out_delete:
	FUNC1(evlist);
	return err;
}