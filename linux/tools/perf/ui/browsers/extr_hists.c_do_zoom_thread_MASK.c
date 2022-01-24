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
struct thread {scalar_t__ comm_set; int /*<<< orphan*/  tid; } ;
struct popup_action {struct thread* thread; } ;
struct hist_browser {TYPE_1__* hists; int /*<<< orphan*/  pstack; } ;
struct TYPE_3__ {scalar_t__ thread_filter; } ;

/* Variables and functions */
 int /*<<< orphan*/  HISTC_THREAD ; 
 struct thread* comm ; 
 int /*<<< orphan*/  FUNC0 (struct hist_browser*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 char* FUNC6 (struct thread*) ; 
 scalar_t__ FUNC7 (struct thread*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11(struct hist_browser *browser, struct popup_action *act)
{
	struct thread *thread = act->thread;

	if ((!FUNC2(browser->hists, thread) &&
	     !FUNC2(browser->hists, comm)) || thread == NULL)
		return 0;

	if (browser->hists->thread_filter) {
		FUNC5(browser->pstack, &browser->hists->thread_filter);
		FUNC3(HISTC_THREAD, false);
		FUNC8(browser->hists->thread_filter);
		FUNC10();
	} else {
		if (FUNC2(browser->hists, thread)) {
			FUNC9("To zoom out press ESC or ENTER + \"Zoom out of %s(%d) thread\"",
					   thread->comm_set ? FUNC6(thread) : "",
					   thread->tid);
		} else {
			FUNC9("To zoom out press ESC or ENTER + \"Zoom out of %s thread\"",
					   thread->comm_set ? FUNC6(thread) : "");
		}

		browser->hists->thread_filter = FUNC7(thread);
		FUNC3(HISTC_THREAD, false);
		FUNC4(browser->pstack, &browser->hists->thread_filter);
	}

	FUNC1(browser->hists);
	FUNC0(browser);
	return 0;
}