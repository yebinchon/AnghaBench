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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 int /*<<< orphan*/  svgfile ; 

void FUNC2(void)
{
	if (!svgfile)
		return;

	FUNC0(svgfile, "<g>\n");
	FUNC1(0,	"Running", "sample");
	FUNC1(100,	"Idle","c1");
	FUNC1(200,	"Deeper Idle", "c3");
	FUNC1(350,	"Deepest Idle", "c6");
	FUNC1(550,	"Sleeping", "process2");
	FUNC1(650,	"Waiting for cpu", "waiting");
	FUNC1(800,	"Blocked on IO", "blocked");
	FUNC0(svgfile, "</g>\n");
}