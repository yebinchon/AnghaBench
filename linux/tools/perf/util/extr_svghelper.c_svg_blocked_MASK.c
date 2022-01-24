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
typedef  scalar_t__ u64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,scalar_t__,char*) ; 
 int /*<<< orphan*/  svgfile ; 
 char* FUNC2 (scalar_t__) ; 

void FUNC3(int Yslot, int cpu, u64 start, u64 end, const char *backtrace)
{
	if (!svgfile)
		return;

	FUNC0(svgfile, "<g>\n");
	FUNC0(svgfile, "<title>#%d blocked %s</title>\n", cpu,
		FUNC2(end - start));
	if (backtrace)
		FUNC0(svgfile, "<desc>Blocked on:\n%s</desc>\n", backtrace);
	FUNC1(Yslot, start, end, "blocked");
	FUNC0(svgfile, "</g>\n");
}