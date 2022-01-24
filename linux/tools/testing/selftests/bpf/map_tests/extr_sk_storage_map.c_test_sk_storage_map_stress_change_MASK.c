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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,int) ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  SIG_DFL ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 () ; 
 scalar_t__ runtime_s ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stop_handler ; 

__attribute__((used)) static void FUNC4(void)
{
	int err;

	FUNC3(SIGTERM, stop_handler);
	FUNC3(SIGINT, stop_handler);
	if (runtime_s > 0) {
		FUNC3(SIGALRM, stop_handler);
		FUNC1(runtime_s);
	}

	err = FUNC2();

	FUNC3(SIGTERM, SIG_DFL);
	FUNC3(SIGINT, SIG_DFL);
	if (runtime_s > 0) {
		FUNC3(SIGALRM, SIG_DFL);
		FUNC1(0);
	}

	FUNC0(err, "test_sk_storage_map_stress_change", "err:%d\n", err);
}