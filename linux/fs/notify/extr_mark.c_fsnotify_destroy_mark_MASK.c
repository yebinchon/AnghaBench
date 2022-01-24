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
struct fsnotify_mark {int dummy; } ;
struct fsnotify_group {int /*<<< orphan*/  mark_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsnotify_mark*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct fsnotify_mark *mark,
			   struct fsnotify_group *group)
{
	FUNC2(&group->mark_mutex, SINGLE_DEPTH_NESTING);
	FUNC0(mark);
	FUNC3(&group->mark_mutex);
	FUNC1(mark);
}