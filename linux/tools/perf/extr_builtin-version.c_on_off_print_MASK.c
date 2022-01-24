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
 int /*<<< orphan*/  PERF_COLOR_GREEN ; 
 int /*<<< orphan*/  PERF_COLOR_RED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

__attribute__((used)) static void FUNC3(const char *status)
{
	FUNC1("[ ");

	if (!FUNC2(status, "OFF"))
		FUNC0(stdout, PERF_COLOR_RED, "%-3s", status);
	else
		FUNC0(stdout, PERF_COLOR_GREEN, "%-3s", status);

	FUNC1(" ]");
}