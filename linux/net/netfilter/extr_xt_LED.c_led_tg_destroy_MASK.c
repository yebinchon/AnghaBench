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
struct xt_tgdtor_param {struct xt_led_info* targinfo; } ;
struct xt_led_info_internal {struct xt_led_info_internal* trigger_id; int /*<<< orphan*/  netfilter_led_trigger; int /*<<< orphan*/  timer; int /*<<< orphan*/  list; scalar_t__ refcnt; } ;
struct xt_led_info {struct xt_led_info_internal* internal_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct xt_led_info_internal*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xt_led_mutex ; 

__attribute__((used)) static void FUNC6(const struct xt_tgdtor_param *par)
{
	const struct xt_led_info *ledinfo = par->targinfo;
	struct xt_led_info_internal *ledinternal = ledinfo->internal_data;

	FUNC4(&xt_led_mutex);

	if (--ledinternal->refcnt) {
		FUNC5(&xt_led_mutex);
		return;
	}

	FUNC3(&ledinternal->list);

	FUNC0(&ledinternal->timer);

	FUNC2(&ledinternal->netfilter_led_trigger);

	FUNC5(&xt_led_mutex);

	FUNC1(ledinternal->trigger_id);
	FUNC1(ledinternal);
}