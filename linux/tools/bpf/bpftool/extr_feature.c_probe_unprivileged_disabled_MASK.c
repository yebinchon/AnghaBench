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
 scalar_t__ json_output ; 
 int /*<<< orphan*/  json_wtr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void)
{
	int res;

	/* No support for C-style ouptut */

	res = FUNC2("/proc/sys/kernel/unprivileged_bpf_disabled");
	if (json_output) {
		FUNC0(json_wtr, "unprivileged_bpf_disabled", res);
	} else {
		switch (res) {
		case 0:
			FUNC1("bpf() syscall for unprivileged users is enabled\n");
			break;
		case 1:
			FUNC1("bpf() syscall restricted to privileged users\n");
			break;
		case -1:
			FUNC1("Unable to retrieve required privileges for bpf() syscall\n");
			break;
		default:
			FUNC1("bpf() syscall restriction has unknown value %d\n", res);
		}
	}
}