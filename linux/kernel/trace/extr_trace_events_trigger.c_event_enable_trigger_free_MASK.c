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
struct event_trigger_ops {int dummy; } ;
struct event_trigger_data {scalar_t__ ref; struct enable_trigger_data* private_data; } ;
struct enable_trigger_data {TYPE_2__* file; } ;
struct TYPE_4__ {TYPE_1__* event_call; } ;
struct TYPE_3__ {int /*<<< orphan*/  mod; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct enable_trigger_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct event_trigger_data*) ; 

void FUNC5(struct event_trigger_ops *ops,
			       struct event_trigger_data *data)
{
	struct enable_trigger_data *enable_data = data->private_data;

	if (FUNC0(data->ref <= 0))
		return;

	data->ref--;
	if (!data->ref) {
		/* Remove the SOFT_MODE flag */
		FUNC3(enable_data->file, 0, 1);
		FUNC2(enable_data->file->event_call->mod);
		FUNC4(data);
		FUNC1(enable_data);
	}
}