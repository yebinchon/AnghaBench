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
 char* PERF_COLOR_BLUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int FUNC2 (char const*) ; 

__attribute__((used)) static void FUNC3(const char *pkt_string)
{
	const char *color = PERF_COLOR_BLUE;
	int len = FUNC2(pkt_string);

	if (len && (pkt_string[len-1] == '\n'))
		FUNC0(stdout, color, "	%s", pkt_string);
	else
		FUNC0(stdout, color, "	%s\n", pkt_string);

	FUNC1(stdout);
}