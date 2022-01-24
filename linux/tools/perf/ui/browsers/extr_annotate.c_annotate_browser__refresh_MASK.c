#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ui_browser {scalar_t__ rows; } ;
struct annotation {TYPE_1__* options; } ;
struct TYPE_2__ {scalar_t__ jump_arrows; } ;

/* Variables and functions */
 int /*<<< orphan*/  HE_COLORSET_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (struct ui_browser*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ui_browser*) ; 
 int FUNC2 (struct annotation*) ; 
 struct annotation* FUNC3 (struct ui_browser*) ; 
 int FUNC4 (struct ui_browser*) ; 
 int /*<<< orphan*/  FUNC5 (struct ui_browser*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int FUNC6(struct ui_browser *browser)
{
	struct annotation *notes = FUNC3(browser);
	int ret = FUNC4(browser);
	int pcnt_width = FUNC2(notes);

	if (notes->options->jump_arrows)
		FUNC1(browser);

	FUNC5(browser, HE_COLORSET_NORMAL);
	FUNC0(browser, pcnt_width, 0, browser->rows - 1);
	return ret;
}