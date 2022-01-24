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
struct ui_browser_colorset {int /*<<< orphan*/  bg; int /*<<< orphan*/  fg; scalar_t__ name; int /*<<< orphan*/  colorset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ui_browser__color_config ; 
 struct ui_browser_colorset* ui_browser__colorsets ; 

void FUNC2(void)
{
	int i = 0;

	FUNC0(ui_browser__color_config, NULL);

	while (ui_browser__colorsets[i].name) {
		struct ui_browser_colorset *c = &ui_browser__colorsets[i++];
		FUNC1(c->colorset, c->name, c->fg, c->bg);
	}
}