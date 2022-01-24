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
struct thread {scalar_t__ comm_set; int /*<<< orphan*/  tid; } ;
struct popup_action {int /*<<< orphan*/  fn; struct thread* thread; } ;
struct hist_browser {TYPE_1__* hists; } ;
struct TYPE_2__ {scalar_t__ thread_filter; } ;

/* Variables and functions */
 int FUNC0 (char**,char*,char*,char*,...) ; 
 struct thread* comm ; 
 int /*<<< orphan*/  do_zoom_thread ; 
 scalar_t__ FUNC1 (TYPE_1__*,struct thread*) ; 
 char* FUNC2 (struct thread*) ; 

__attribute__((used)) static int
FUNC3(struct hist_browser *browser, struct popup_action *act,
	       char **optstr, struct thread *thread)
{
	int ret;

	if ((!FUNC1(browser->hists, thread) &&
	     !FUNC1(browser->hists, comm)) || thread == NULL)
		return 0;

	if (FUNC1(browser->hists, thread)) {
		ret = FUNC0(optstr, "Zoom %s %s(%d) thread",
			       browser->hists->thread_filter ? "out of" : "into",
			       thread->comm_set ? FUNC2(thread) : "",
			       thread->tid);
	} else {
		ret = FUNC0(optstr, "Zoom %s %s thread",
			       browser->hists->thread_filter ? "out of" : "into",
			       thread->comm_set ? FUNC2(thread) : "");
	}
	if (ret < 0)
		return 0;

	act->thread = thread;
	act->fn = do_zoom_thread;
	return 1;
}