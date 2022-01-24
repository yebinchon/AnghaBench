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
struct ui_browser {scalar_t__ width; } ;

/* Variables and functions */
 int /*<<< orphan*/  HE_COLORSET_ROOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_browser*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_browser*,char const*,scalar_t__) ; 

void FUNC3(struct ui_browser *browser, const char *title)
{
	FUNC0(0, 0);
	FUNC1(browser, HE_COLORSET_ROOT);
	FUNC2(browser, title, browser->width + 1);
}