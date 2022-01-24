#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct inotify_event_info {int wd; scalar_t__ name_len; scalar_t__ sync_cookie; int /*<<< orphan*/  mask; int /*<<< orphan*/  fse; } ;
struct TYPE_3__ {int /*<<< orphan*/  ucounts; int /*<<< orphan*/  idr; int /*<<< orphan*/  idr_lock; } ;
struct fsnotify_group {unsigned int max_events; TYPE_1__ inotify_data; int /*<<< orphan*/  memcg; int /*<<< orphan*/ * overflow_event; } ;
struct TYPE_4__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMFILE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct fsnotify_group* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FS_Q_OVERFLOW ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  UCOUNT_INOTIFY_INSTANCES ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct fsnotify_group* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inotify_fsnotify_ops ; 
 struct inotify_event_info* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static struct fsnotify_group *FUNC13(unsigned int max_events)
{
	struct fsnotify_group *group;
	struct inotify_event_info *oevent;

	group = FUNC4(&inotify_fsnotify_ops);
	if (FUNC1(group))
		return group;

	oevent = FUNC10(sizeof(struct inotify_event_info), GFP_KERNEL);
	if (FUNC12(!oevent)) {
		FUNC5(group);
		return FUNC0(-ENOMEM);
	}
	group->overflow_event = &oevent->fse;
	FUNC6(group->overflow_event, NULL);
	oevent->mask = FS_Q_OVERFLOW;
	oevent->wd = -1;
	oevent->sync_cookie = 0;
	oevent->name_len = 0;

	group->max_events = max_events;
	group->memcg = FUNC7(current->mm);

	FUNC11(&group->inotify_data.idr_lock);
	FUNC8(&group->inotify_data.idr);
	group->inotify_data.ucounts = FUNC9(FUNC3(),
						 FUNC2(),
						 UCOUNT_INOTIFY_INSTANCES);

	if (!group->inotify_data.ucounts) {
		FUNC5(group);
		return FUNC0(-EMFILE);
	}

	return group;
}