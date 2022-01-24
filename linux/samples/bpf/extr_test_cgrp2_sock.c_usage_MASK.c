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
 int EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static int FUNC1(const char *argv0)
{
	FUNC0("Usage:\n");
	FUNC0("  Attach a program\n");
	FUNC0("  %s -b bind-to-dev -m mark -p prio cg-path\n", argv0);
	FUNC0("\n");
	FUNC0("  Detach a program\n");
	FUNC0("  %s -d cg-path\n", argv0);
	FUNC0("\n");
	FUNC0("  Show inherited socket settings (mark, priority, and device)\n");
	FUNC0("  %s [-6]\n", argv0);
	return EXIT_FAILURE;
}