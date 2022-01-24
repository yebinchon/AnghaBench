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
struct xt_action_param {struct idletimer_tg_info* targinfo; } ;
struct sk_buff {int dummy; } ;
struct idletimer_tg_info {int timeout; TYPE_1__* timer; int /*<<< orphan*/  label; } ;
struct TYPE_2__ {int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 unsigned int XT_CONTINUE ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static unsigned int FUNC3(struct sk_buff *skb,
					 const struct xt_action_param *par)
{
	const struct idletimer_tg_info *info = par->targinfo;

	FUNC2("resetting timer %s, timeout period %u\n",
		 info->label, info->timeout);

	FUNC0(&info->timer->timer,
		  FUNC1(info->timeout * 1000) + jiffies);

	return XT_CONTINUE;
}