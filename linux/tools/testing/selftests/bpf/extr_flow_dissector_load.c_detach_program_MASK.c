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
 int /*<<< orphan*/  BPF_FLOW_DISSECTOR ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* cfg_pin_path ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
	char command[64];
	int ret;

	ret = FUNC0(0, BPF_FLOW_DISSECTOR);
	if (ret)
		FUNC1(1, 0, "bpf_prog_detach");

	/* To unpin, it is necessary and sufficient to just remove this dir */
	FUNC2(command, "rm -r %s", cfg_pin_path);
	ret = FUNC3(command);
	if (ret)
		FUNC1(1, errno, "%s", command);
}