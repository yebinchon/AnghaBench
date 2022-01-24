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
struct timer_list {int dummy; } ;
struct rt5645_priv {int /*<<< orphan*/  jack_detect_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  btn_check_timer ; 
 struct rt5645_priv* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct rt5645_priv* rt5645 ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct rt5645_priv *rt5645 = FUNC0(rt5645, t, btn_check_timer);

	FUNC2(system_power_efficient_wq,
		   &rt5645->jack_detect_work, FUNC1(5));
}