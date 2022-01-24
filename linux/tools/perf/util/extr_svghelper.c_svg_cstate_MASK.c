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
typedef  int /*<<< orphan*/  u64 ;

/* Variables and functions */
 double MIN_TEXT_SIZE ; 
 double SLOT_HEIGHT ; 
 double SLOT_MULT ; 
 double FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 double FUNC2 (double) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  svgfile ; 
 double FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(int cpu, u64 start, u64 end, int type)
{
	double width;
	char style[128];

	if (!svgfile)
		return;


	FUNC1(svgfile, "<g>\n");

	if (type > 6)
		type = 6;
	FUNC3(style, "c%i", type);

	FUNC1(svgfile, "<rect class=\"%s\" x=\"%.8f\" width=\"%.8f\" y=\"%.1f\" height=\"%.1f\"/>\n",
		style,
		FUNC4(start), FUNC4(end)-FUNC4(start),
		FUNC0(cpu), SLOT_MULT+SLOT_HEIGHT);

	width = (FUNC4(end)-FUNC4(start))/2.0;
	if (width > 6)
		width = 6;

	width = FUNC2(width);

	if (width > MIN_TEXT_SIZE)
		FUNC1(svgfile, "<text x=\"%.8f\" y=\"%.8f\" font-size=\"%.8fpt\">C%i</text>\n",
			FUNC4(start), FUNC0(cpu)+width, width, type);

	FUNC1(svgfile, "</g>\n");
}