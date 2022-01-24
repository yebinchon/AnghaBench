#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {struct map* map; } ;
struct popup_action {TYPE_1__ ms; } ;
struct map {TYPE_2__* dso; } ;
struct hist_browser {TYPE_4__* hists; int /*<<< orphan*/  pstack; } ;
struct TYPE_8__ {TYPE_2__* dso_filter; } ;
struct TYPE_7__ {char* short_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  HISTC_DSO ; 
 scalar_t__ FUNC0 (struct map*) ; 
 int /*<<< orphan*/  dso ; 
 int /*<<< orphan*/  FUNC1 (struct hist_browser*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int
FUNC9(struct hist_browser *browser, struct popup_action *act)
{
	struct map *map = act->ms.map;

	if (!FUNC3(browser->hists, dso) || map == NULL)
		return 0;

	if (browser->hists->dso_filter) {
		FUNC6(browser->pstack, &browser->hists->dso_filter);
		FUNC4(HISTC_DSO, false);
		browser->hists->dso_filter = NULL;
		FUNC8();
	} else {
		FUNC7("To zoom out press ESC or ENTER + \"Zoom out of %s DSO\"",
				   FUNC0(map) ? "the Kernel" : map->dso->short_name);
		browser->hists->dso_filter = map->dso;
		FUNC4(HISTC_DSO, true);
		FUNC5(browser->pstack, &browser->hists->dso_filter);
	}

	FUNC2(browser->hists);
	FUNC1(browser);
	return 0;
}