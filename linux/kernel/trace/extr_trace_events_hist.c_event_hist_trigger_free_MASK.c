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
struct hist_trigger_data {int dummy; } ;
struct event_trigger_ops {int dummy; } ;
struct event_trigger_data {scalar_t__ ref; scalar_t__ name; struct hist_trigger_data* private_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct event_trigger_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct hist_trigger_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct hist_trigger_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct event_trigger_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct hist_trigger_data*) ; 

__attribute__((used)) static void FUNC6(struct event_trigger_ops *ops,
				    struct event_trigger_data *data)
{
	struct hist_trigger_data *hist_data = data->private_data;

	if (FUNC0(data->ref <= 0))
		return;

	data->ref--;
	if (!data->ref) {
		if (data->name)
			FUNC1(data);

		FUNC4(data);

		FUNC3(hist_data);

		FUNC5(hist_data);

		FUNC2(hist_data);
	}
}