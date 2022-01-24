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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,double,double,int,double,char const*) ; 
 int /*<<< orphan*/  svgfile ; 
 double FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(int Yslot, u64 start, u64 end, const char *type)
{
	if (!svgfile)
		return;

	FUNC0(svgfile, "<rect x=\"%.8f\" width=\"%.8f\" y=\"%.1d\" height=\"%.1f\" class=\"%s\"/>\n",
		FUNC1(start), FUNC1(end)-FUNC1(start), Yslot * SLOT_MULT, SLOT_HEIGHT, type);
}