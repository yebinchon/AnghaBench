#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct idletimer_tg_info {int timeout; TYPE_4__* timer; int /*<<< orphan*/  label; } ;
struct TYPE_8__ {int mode; TYPE_4__* name; } ;
struct TYPE_7__ {TYPE_2__ attr; int /*<<< orphan*/  show; } ;
struct TYPE_9__ {int refcnt; TYPE_1__ attr; int /*<<< orphan*/  timer; int /*<<< orphan*/  work; int /*<<< orphan*/  entry; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  idletimer_tg_expired ; 
 int /*<<< orphan*/  idletimer_tg_kobj ; 
 int /*<<< orphan*/  idletimer_tg_list ; 
 int /*<<< orphan*/  idletimer_tg_show ; 
 int /*<<< orphan*/  idletimer_tg_work ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 TYPE_4__* FUNC3 (int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct idletimer_tg_info *info)
{
	int ret;

	info->timer = FUNC3(sizeof(*info->timer), GFP_KERNEL);
	if (!info->timer) {
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC1(info->label, sizeof(info->label));
	if (ret < 0)
		goto out_free_timer;

	FUNC9(&info->timer->attr.attr);
	info->timer->attr.attr.name = FUNC4(info->label, GFP_KERNEL);
	if (!info->timer->attr.attr.name) {
		ret = -ENOMEM;
		goto out_free_timer;
	}
	info->timer->attr.attr.mode = 0444;
	info->timer->attr.show = idletimer_tg_show;

	ret = FUNC10(idletimer_tg_kobj, &info->timer->attr.attr);
	if (ret < 0) {
		FUNC8("couldn't add file to sysfs");
		goto out_free_attr;
	}

	FUNC5(&info->timer->entry, &idletimer_tg_list);

	FUNC11(&info->timer->timer, idletimer_tg_expired, 0);
	info->timer->refcnt = 1;

	FUNC0(&info->timer->work, idletimer_tg_work);

	FUNC6(&info->timer->timer,
		  FUNC7(info->timeout * 1000) + jiffies);

	return 0;

out_free_attr:
	FUNC2(info->timer->attr.attr.name);
out_free_timer:
	FUNC2(info->timer);
out:
	return ret;
}