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
struct event_trigger_ops {int dummy; } ;
struct event_trigger_data {TYPE_1__* named_data; int /*<<< orphan*/  ref; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct event_trigger_ops*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct event_trigger_data*) ; 

__attribute__((used)) static int FUNC2(struct event_trigger_ops *ops,
					 struct event_trigger_data *data)
{
	data->ref++;

	FUNC1(data->named_data->name, data);

	FUNC0(ops, data->named_data);

	return 0;
}