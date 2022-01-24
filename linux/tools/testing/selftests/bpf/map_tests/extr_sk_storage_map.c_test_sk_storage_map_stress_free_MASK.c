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
struct rlimit {int rlim_cur; int rlim_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int,...) ; 
 int /*<<< orphan*/  RLIMIT_NOFILE ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int nr_sk_per_thread ; 
 int nr_sk_threads ; 
 scalar_t__ runtime_s ; 
 int FUNC4 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_handler ; 

__attribute__((used)) static void FUNC6(void)
{
	struct rlimit rlim_old, rlim_new = {};
	int err;

	FUNC3(RLIMIT_NOFILE, &rlim_old);

	FUNC5(SIGTERM, stop_handler);
	FUNC5(SIGINT, stop_handler);
	if (runtime_s > 0) {
		FUNC5(SIGALRM, stop_handler);
		FUNC1(runtime_s);
	}

	if (rlim_old.rlim_cur < nr_sk_threads * nr_sk_per_thread) {
		rlim_new.rlim_cur = nr_sk_threads * nr_sk_per_thread + 128;
		rlim_new.rlim_max = rlim_new.rlim_cur + 128;
		err = FUNC4(RLIMIT_NOFILE, &rlim_new);
		FUNC0(err, "setrlimit(RLIMIT_NOFILE)", "rlim_new:%lu errno:%d",
		      rlim_new.rlim_cur, errno);
	}

	err = FUNC2();

	FUNC5(SIGTERM, SIG_DFL);
	FUNC5(SIGINT, SIG_DFL);
	if (runtime_s > 0) {
		FUNC5(SIGALRM, SIG_DFL);
		FUNC1(0);
	}

	if (rlim_new.rlim_cur)
		FUNC4(RLIMIT_NOFILE, &rlim_old);

	FUNC0(err, "test_sk_storage_map_stress_free", "err:%d\n", err);
}