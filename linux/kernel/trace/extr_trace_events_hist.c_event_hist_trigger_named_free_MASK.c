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
struct event_trigger_ops {int dummy; } ;
struct event_trigger_data {scalar_t__ ref; int /*<<< orphan*/  named_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct event_trigger_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct event_trigger_ops*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct event_trigger_data*) ; 

__attribute__((used)) static void FUNC4(struct event_trigger_ops *ops,
					  struct event_trigger_data *data)
{
	if (FUNC0(data->ref <= 0))
		return;

	FUNC2(ops, data->named_data);

	data->ref--;
	if (!data->ref) {
		FUNC1(data);
		FUNC3(data);
	}
}