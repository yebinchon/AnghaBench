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
struct fsnotify_mark {struct fsnotify_group* group; } ;
struct fsnotify_group {TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_mark ) (struct fsnotify_mark*) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fsnotify_group*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsnotify_mark*) ; 

__attribute__((used)) static void FUNC3(struct fsnotify_mark *mark)
{
	struct fsnotify_group *group = mark->group;

	if (FUNC0(!group))
		return;
	group->ops->free_mark(mark);
	FUNC1(group);
}