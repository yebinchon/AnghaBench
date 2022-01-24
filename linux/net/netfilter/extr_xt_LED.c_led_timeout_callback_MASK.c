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
struct xt_led_info_internal {int /*<<< orphan*/  netfilter_led_trigger; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LED_OFF ; 
 struct xt_led_info_internal* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct xt_led_info_internal* ledinternal ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct xt_led_info_internal *ledinternal = FUNC0(ledinternal, t,
							      timer);

	FUNC1(&ledinternal->netfilter_led_trigger, LED_OFF);
}