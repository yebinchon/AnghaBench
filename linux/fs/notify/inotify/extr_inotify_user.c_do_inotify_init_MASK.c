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
struct fsnotify_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int IN_CLOEXEC ; 
 int IN_NONBLOCK ; 
 scalar_t__ FUNC1 (struct fsnotify_group*) ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int FUNC2 (struct fsnotify_group*) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *,struct fsnotify_group*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  inotify_fops ; 
 int /*<<< orphan*/  inotify_max_queued_events ; 
 struct fsnotify_group* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(int flags)
{
	struct fsnotify_group *group;
	int ret;

	/* Check the IN_* constants for consistency.  */
	FUNC0(IN_CLOEXEC != O_CLOEXEC);
	FUNC0(IN_NONBLOCK != O_NONBLOCK);

	if (flags & ~(IN_CLOEXEC | IN_NONBLOCK))
		return -EINVAL;

	/* fsnotify_obtain_group took a reference to group, we put this when we kill the file in the end */
	group = FUNC5(inotify_max_queued_events);
	if (FUNC1(group))
		return FUNC2(group);

	ret = FUNC3("inotify", &inotify_fops, group,
				  O_RDONLY | flags);
	if (ret < 0)
		FUNC4(group);

	return ret;
}