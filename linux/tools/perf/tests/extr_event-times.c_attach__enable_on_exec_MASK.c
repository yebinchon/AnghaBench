#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct target {int /*<<< orphan*/  uid; } ;
struct TYPE_3__ {int enable_on_exec; } ;
struct TYPE_4__ {TYPE_1__ attr; } ;
struct evsel {TYPE_2__ core; } ;
struct evlist {int dummy; } ;
typedef  int /*<<< orphan*/  sbuf ;

/* Variables and functions */
 int STRERR_BUFSIZE ; 
 int TEST_FAIL ; 
 int TEST_OK ; 
 int /*<<< orphan*/  UINT_MAX ; 
 int /*<<< orphan*/  errno ; 
 struct evsel* FUNC0 (struct evlist*) ; 
 int FUNC1 (struct evlist*) ; 
 int FUNC2 (struct evlist*,struct target*) ; 
 int FUNC3 (struct evlist*,struct target*,char const**,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct evlist*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(struct evlist *evlist)
{
	struct evsel *evsel = FUNC0(evlist);
	struct target target = {
		.uid = UINT_MAX,
	};
	const char *argv[] = { "true", NULL, };
	char sbuf[STRERR_BUFSIZE];
	int err;

	FUNC5("attaching to spawned child, enable on exec\n");

	err = FUNC2(evlist, &target);
	if (err < 0) {
		FUNC5("Not enough memory to create thread/cpu maps\n");
		return err;
	}

	err = FUNC3(evlist, &target, argv, false, NULL);
	if (err < 0) {
		FUNC5("Couldn't run the workload!\n");
		return err;
	}

	evsel->core.attr.enable_on_exec = 1;

	err = FUNC1(evlist);
	if (err < 0) {
		FUNC5("perf_evlist__open: %s\n",
			 FUNC6(errno, sbuf, sizeof(sbuf)));
		return err;
	}

	return FUNC4(evlist) == 1 ? TEST_OK : TEST_FAIL;
}