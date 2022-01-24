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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void)
{
	FUNC0("core-power:\tInterface that allows user to define per core/tile\n\
		priority.\n");
	FUNC0("\nCommands : For feature=core-power\n");
	FUNC0("\tinfo\n");
	FUNC0("\tenable\n");
	FUNC0("\tdisable\n");
	FUNC0("\tconfig\n");
	FUNC0("\tget-config\n");
	FUNC0("\tassoc\n");
	FUNC0("\tget-assoc\n");
}