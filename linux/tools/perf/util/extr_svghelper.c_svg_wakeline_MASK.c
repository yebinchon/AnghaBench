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
 double SLOT_HEIGHT ; 
 int SLOT_MULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  svgfile ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(u64 start, int row1, int row2, const char *backtrace)
{
	double height;

	if (!svgfile)
		return;


	FUNC0(svgfile, "<g>\n");

	if (backtrace)
		FUNC0(svgfile, "<desc>%s</desc>\n", backtrace);

	if (row1 < row2)
		FUNC0(svgfile, "<line x1=\"%.8f\" y1=\"%.2f\" x2=\"%.8f\" y2=\"%.2d\" style=\"stroke:rgb(32,255,32);stroke-width:0.009\"/>\n",
			FUNC1(start), row1 * SLOT_MULT + SLOT_HEIGHT,  FUNC1(start), row2 * SLOT_MULT);
	else
		FUNC0(svgfile, "<line x1=\"%.8f\" y1=\"%.2f\" x2=\"%.8f\" y2=\"%.2d\" style=\"stroke:rgb(32,255,32);stroke-width:0.009\"/>\n",
			FUNC1(start), row2 * SLOT_MULT + SLOT_HEIGHT,  FUNC1(start), row1 * SLOT_MULT);

	height = row1 * SLOT_MULT;
	if (row2 > row1)
		height += SLOT_HEIGHT;
	FUNC0(svgfile, "<circle  cx=\"%.8f\" cy=\"%.2f\" r = \"0.01\"  style=\"fill:rgb(32,255,32)\"/>\n",
			FUNC1(start), height);

	FUNC0(svgfile, "</g>\n");
}