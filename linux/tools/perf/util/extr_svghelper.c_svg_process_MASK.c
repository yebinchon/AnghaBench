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
 double MIN_TEXT_SIZE ; 
 int SLOT_HEIGHT ; 
 double SLOT_MULT ; 
 double FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 double FUNC2 (double) ; 
 scalar_t__ FUNC3 (char const*,scalar_t__) ; 
 scalar_t__ svg_highlight ; 
 scalar_t__ svg_highlight_name ; 
 int /*<<< orphan*/  svgfile ; 
 double FUNC4 (scalar_t__) ; 
 char* FUNC5 (scalar_t__) ; 

void FUNC6(int cpu, u64 start, u64 end, int pid, const char *name, const char *backtrace)
{
	double width;
	const char *type;

	if (!svgfile)
		return;

	if (svg_highlight && end - start >= svg_highlight)
		type = "sample_hi";
	else if (svg_highlight_name && FUNC3(name, svg_highlight_name))
		type = "sample_hi";
	else
		type = "sample";

	FUNC1(svgfile, "<g transform=\"translate(%.8f,%.8f)\">\n", FUNC4(start), FUNC0(cpu));
	FUNC1(svgfile, "<title>%d %s running %s</title>\n", pid, name, FUNC5(end - start));
	if (backtrace)
		FUNC1(svgfile, "<desc>Switched because:\n%s</desc>\n", backtrace);
	FUNC1(svgfile, "<rect x=\"0\" width=\"%.8f\" y=\"0\" height=\"%.1f\" class=\"%s\"/>\n",
		FUNC4(end)-FUNC4(start), SLOT_MULT+SLOT_HEIGHT, type);
	width = FUNC4(end)-FUNC4(start);
	if (width > 6)
		width = 6;

	width = FUNC2(width);

	if (width > MIN_TEXT_SIZE)
		FUNC1(svgfile, "<text transform=\"rotate(90)\" font-size=\"%.8fpt\">%s</text>\n",
			width, name);

	FUNC1(svgfile, "</g>\n");
}