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
struct ui_browser {int /*<<< orphan*/  title; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_browser*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_browser*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ui_helpline__current ; 

void FUNC3(struct ui_browser *browser)
{
	FUNC0(false);
	FUNC2(browser, browser->title, ui_helpline__current);
	FUNC1(browser);
}