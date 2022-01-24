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
 double SLOT_HALF ; 
 int SLOT_MULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  svgfile ; 
 double FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(int Yslot, u64 start, u64 end, double height, const char *type, int fd, int err, int merges)
{
	double w = FUNC2(end) - FUNC2(start);
	height = FUNC1(height);

	if (!svgfile)
		return;

	FUNC0(svgfile, "<g>\n");
	FUNC0(svgfile, "<title>fd=%d error=%d merges=%d</title>\n", fd, err, merges);
	FUNC0(svgfile, "<rect x=\"%.8f\" width=\"%.8f\" y=\"%.1d\" height=\"%.1f\" class=\"%s\"/>\n",
		FUNC2(start),
		w,
		Yslot * SLOT_MULT,
		SLOT_HALF * height,
		type);
	FUNC0(svgfile, "</g>\n");
}