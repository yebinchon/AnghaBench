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
struct per_cpu_dm_data {int /*<<< orphan*/  dm_alert_work; } ;

/* Variables and functions */
 struct per_cpu_dm_data* data ; 
 struct per_cpu_dm_data* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  send_timer ; 

__attribute__((used)) static void FUNC2(struct timer_list *t)
{
	struct per_cpu_dm_data *data = FUNC0(data, t, send_timer);

	FUNC1(&data->dm_alert_work);
}