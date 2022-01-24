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
struct hist_trigger_data {int /*<<< orphan*/  map; } ;
struct event_trigger_data {scalar_t__ name; struct hist_trigger_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_trigger_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct event_trigger_data*) ; 

__attribute__((used)) static void FUNC4(struct event_trigger_data *data)
{
	struct hist_trigger_data *hist_data = data->private_data;

	if (data->name)
		FUNC0(data);

	FUNC1();

	FUNC2(hist_data->map);

	if (data->name)
		FUNC3(data);
}