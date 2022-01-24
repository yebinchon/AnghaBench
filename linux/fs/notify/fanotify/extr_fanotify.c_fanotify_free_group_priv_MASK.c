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
struct user_struct {int /*<<< orphan*/  fanotify_listeners; } ;
struct TYPE_2__ {struct user_struct* user; } ;
struct fsnotify_group {TYPE_1__ fanotify_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct user_struct*) ; 

__attribute__((used)) static void FUNC2(struct fsnotify_group *group)
{
	struct user_struct *user;

	user = group->fanotify_data.user;
	FUNC0(&user->fanotify_listeners);
	FUNC1(user);
}