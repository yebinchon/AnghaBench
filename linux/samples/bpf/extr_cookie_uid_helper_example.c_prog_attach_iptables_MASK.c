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
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  prog_fd ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int FUNC6 (char*) ; 
 int FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(char *file)
{
	int ret;
	char rules[100];

	if (FUNC1(prog_fd, file))
		FUNC2(1, errno, "bpf_obj_pin");
	if (FUNC6(file) > 50) {
		FUNC4("file path too long: %s\n", file);
		FUNC3(1);
	}
	FUNC5(rules, "iptables -A OUTPUT -m bpf --object-pinned %s -j ACCEPT",
		file);
	ret = FUNC7(rules);
	if (ret < 0) {
		FUNC4("iptables rule update failed: %d/n", FUNC0(ret));
		FUNC3(1);
	}
}