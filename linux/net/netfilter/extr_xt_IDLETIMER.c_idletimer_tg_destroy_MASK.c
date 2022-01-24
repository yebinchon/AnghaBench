#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xt_tgdtor_param {struct idletimer_tg_info* targinfo; } ;
struct idletimer_tg_info {TYPE_3__* timer; int /*<<< orphan*/  label; } ;
struct TYPE_5__ {TYPE_3__* name; } ;
struct TYPE_4__ {TYPE_2__ attr; } ;
struct TYPE_6__ {scalar_t__ refcnt; TYPE_1__ attr; int /*<<< orphan*/  work; int /*<<< orphan*/  timer; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idletimer_tg_kobj ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  list_mutex ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static void FUNC8(const struct xt_tgdtor_param *par)
{
	const struct idletimer_tg_info *info = par->targinfo;

	FUNC6("destroy targinfo %s\n", info->label);

	FUNC4(&list_mutex);

	if (--info->timer->refcnt == 0) {
		FUNC6("deleting timer %s\n", info->label);

		FUNC3(&info->timer->entry);
		FUNC1(&info->timer->timer);
		FUNC0(&info->timer->work);
		FUNC7(idletimer_tg_kobj, &info->timer->attr.attr);
		FUNC2(info->timer->attr.attr.name);
		FUNC2(info->timer);
	} else {
		FUNC6("decreased refcnt of timer %s to %u\n",
			 info->label, info->timer->refcnt);
	}

	FUNC5(&list_mutex);
}