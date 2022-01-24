#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct popup_action {int socket; } ;
struct hist_browser {TYPE_1__* hists; int /*<<< orphan*/  pstack; } ;
struct TYPE_3__ {int socket_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  HISTC_SOCKET ; 
 int /*<<< orphan*/  FUNC0 (struct hist_browser*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  socket ; 

__attribute__((used)) static int
FUNC6(struct hist_browser *browser, struct popup_action *act)
{
	if (!FUNC2(browser->hists, socket) || act->socket < 0)
		return 0;

	if (browser->hists->socket_filter > -1) {
		FUNC5(browser->pstack, &browser->hists->socket_filter);
		browser->hists->socket_filter = -1;
		FUNC3(HISTC_SOCKET, false);
	} else {
		browser->hists->socket_filter = act->socket;
		FUNC3(HISTC_SOCKET, true);
		FUNC4(browser->pstack, &browser->hists->socket_filter);
	}

	FUNC1(browser->hists);
	FUNC0(browser);
	return 0;
}