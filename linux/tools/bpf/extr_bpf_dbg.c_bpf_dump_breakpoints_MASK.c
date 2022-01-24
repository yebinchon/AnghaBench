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
 int FUNC0 (scalar_t__*) ; 
 scalar_t__* bpf_breakpoints ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void FUNC2(void)
{
	int i;

	FUNC1("breakpoints: ");

	for (i = 0; i < FUNC0(bpf_breakpoints); i++) {
		if (bpf_breakpoints[i] < 0)
			continue;
		FUNC1("%d ", bpf_breakpoints[i]);
	}

	FUNC1("\n");
}