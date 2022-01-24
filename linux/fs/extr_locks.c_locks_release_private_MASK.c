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
struct file_lock {TYPE_2__* fl_lmops; int /*<<< orphan*/ * fl_owner; TYPE_1__* fl_ops; int /*<<< orphan*/  fl_link; int /*<<< orphan*/  fl_blocked_member; int /*<<< orphan*/  fl_blocked_requests; int /*<<< orphan*/  fl_list; int /*<<< orphan*/  fl_wait; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* lm_put_owner ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  (* fl_release_private ) (struct file_lock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct file_lock *fl)
{
	FUNC0(FUNC5(&fl->fl_wait));
	FUNC0(!FUNC2(&fl->fl_list));
	FUNC0(!FUNC2(&fl->fl_blocked_requests));
	FUNC0(!FUNC2(&fl->fl_blocked_member));
	FUNC0(!FUNC1(&fl->fl_link));

	if (fl->fl_ops) {
		if (fl->fl_ops->fl_release_private)
			fl->fl_ops->fl_release_private(fl);
		fl->fl_ops = NULL;
	}

	if (fl->fl_lmops) {
		if (fl->fl_lmops->lm_put_owner) {
			fl->fl_lmops->lm_put_owner(fl->fl_owner);
			fl->fl_owner = NULL;
		}
		fl->fl_lmops = NULL;
	}
}