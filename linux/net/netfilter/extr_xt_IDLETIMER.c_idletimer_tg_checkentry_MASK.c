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
struct xt_tgchk_param {struct idletimer_tg_info* targinfo; } ;
struct idletimer_tg_info {char* label; int timeout; TYPE_1__* timer; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcnt; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int EINVAL ; 
 int INT_MAX ; 
 scalar_t__ MAX_IDLETIMER_LABEL_SIZE ; 
 TYPE_1__* FUNC0 (char*) ; 
 int FUNC1 (struct idletimer_tg_info*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  list_mutex ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ FUNC7 (char*,scalar_t__) ; 

__attribute__((used)) static int FUNC8(const struct xt_tgchk_param *par)
{
	struct idletimer_tg_info *info = par->targinfo;
	int ret;

	FUNC6("checkentry targinfo%s\n", info->label);

	if (info->timeout == 0) {
		FUNC6("timeout value is zero\n");
		return -EINVAL;
	}
	if (info->timeout >= INT_MAX / 1000) {
		FUNC6("timeout value is too big\n");
		return -EINVAL;
	}
	if (info->label[0] == '\0' ||
	    FUNC7(info->label,
		    MAX_IDLETIMER_LABEL_SIZE) == MAX_IDLETIMER_LABEL_SIZE) {
		FUNC6("label is empty or not nul-terminated\n");
		return -EINVAL;
	}

	FUNC4(&list_mutex);

	info->timer = FUNC0(info->label);
	if (info->timer) {
		info->timer->refcnt++;
		FUNC2(&info->timer->timer,
			  FUNC3(info->timeout * 1000) + jiffies);

		FUNC6("increased refcnt of timer %s to %u\n",
			 info->label, info->timer->refcnt);
	} else {
		ret = FUNC1(info);
		if (ret < 0) {
			FUNC6("failed to create timer\n");
			FUNC5(&list_mutex);
			return ret;
		}
	}

	FUNC5(&list_mutex);
	return 0;
}