#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct map* map; } ;
struct popup_action {int /*<<< orphan*/  fn; TYPE_1__ ms; } ;
struct map {TYPE_2__* dso; } ;
struct hist_browser {TYPE_3__* hists; } ;
struct TYPE_6__ {scalar_t__ dso_filter; } ;
struct TYPE_5__ {char* short_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct map*) ; 
 scalar_t__ FUNC1 (char**,char*,char*,char*) ; 
 int /*<<< orphan*/  do_zoom_dso ; 
 int /*<<< orphan*/  dso ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct hist_browser *browser, struct popup_action *act,
	    char **optstr, struct map *map)
{
	if (!FUNC2(browser->hists, dso) || map == NULL)
		return 0;

	if (FUNC1(optstr, "Zoom %s %s DSO",
		     browser->hists->dso_filter ? "out of" : "into",
		     FUNC0(map) ? "the Kernel" : map->dso->short_name) < 0)
		return 0;

	act->ms.map = map;
	act->fn = do_zoom_dso;
	return 1;
}