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
struct ui_browser {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct ui_browser*,double,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_browser*,int) ; 

void FUNC2(struct ui_browser *browser,
				   double percent, bool current)
{
	 int color = FUNC0(browser, percent, current);
	 FUNC1(browser, color);
}