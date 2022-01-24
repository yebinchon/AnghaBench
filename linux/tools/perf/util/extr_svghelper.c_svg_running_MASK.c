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
 double SLOT_HEIGHT ; 
 int SLOT_MULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 double FUNC1 (double) ; 
 scalar_t__ svg_highlight ; 
 int /*<<< orphan*/  svgfile ; 
 double FUNC2 (scalar_t__) ; 
 char* FUNC3 (scalar_t__) ; 

void FUNC4(int Yslot, int cpu, u64 start, u64 end, const char *backtrace)
{
	double text_size;
	const char *type;

	if (!svgfile)
		return;

	if (svg_highlight && end - start > svg_highlight)
		type = "sample_hi";
	else
		type = "sample";
	FUNC0(svgfile, "<g>\n");

	FUNC0(svgfile, "<title>#%d running %s</title>\n",
		cpu, FUNC3(end - start));
	if (backtrace)
		FUNC0(svgfile, "<desc>Switched because:\n%s</desc>\n", backtrace);
	FUNC0(svgfile, "<rect x=\"%.8f\" width=\"%.8f\" y=\"%.1d\" height=\"%.1f\" class=\"%s\"/>\n",
		FUNC2(start), FUNC2(end)-FUNC2(start), Yslot * SLOT_MULT, SLOT_HEIGHT,
		type);

	text_size = (FUNC2(end)-FUNC2(start));
	if (cpu > 9)
		text_size = text_size/2;
	if (text_size > 1.25)
		text_size = 1.25;
	text_size = FUNC1(text_size);

	if (text_size > MIN_TEXT_SIZE)
		FUNC0(svgfile, "<text x=\"%.8f\" y=\"%.8f\" font-size=\"%.8fpt\">%i</text>\n",
			FUNC2(start), Yslot *  SLOT_MULT + SLOT_HEIGHT - 1, text_size,  cpu + 1);

	FUNC0(svgfile, "</g>\n");
}