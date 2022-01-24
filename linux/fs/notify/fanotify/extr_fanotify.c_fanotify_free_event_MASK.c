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
struct fsnotify_event {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ext_fh; } ;
struct fanotify_event {int /*<<< orphan*/  mask; int /*<<< orphan*/  pid; TYPE_1__ fid; int /*<<< orphan*/  path; } ;

/* Variables and functions */
 struct fanotify_event* FUNC0 (struct fsnotify_event*) ; 
 struct fanotify_event* FUNC1 (struct fsnotify_event*) ; 
 int /*<<< orphan*/  fanotify_event_cachep ; 
 scalar_t__ FUNC2 (struct fanotify_event*) ; 
 scalar_t__ FUNC3 (struct fanotify_event*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fanotify_perm_event_cachep ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct fanotify_event*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct fsnotify_event *fsn_event)
{
	struct fanotify_event *event;

	event = FUNC0(fsn_event);
	if (FUNC3(event))
		FUNC7(&event->path);
	else if (FUNC2(event))
		FUNC5(event->fid.ext_fh);
	FUNC8(event->pid);
	if (FUNC4(event->mask)) {
		FUNC6(fanotify_perm_event_cachep,
				FUNC1(fsn_event));
		return;
	}
	FUNC6(fanotify_event_cachep, event);
}