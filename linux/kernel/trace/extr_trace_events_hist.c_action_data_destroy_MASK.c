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
struct action_data {unsigned int n_params; struct action_data* synth_event_name; TYPE_1__* synth_event; struct action_data** params; struct action_data* action_name; } ;
struct TYPE_2__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  event_mutex ; 
 int /*<<< orphan*/  FUNC0 (struct action_data*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct action_data *data)
{
	unsigned int i;

	FUNC1(&event_mutex);

	FUNC0(data->action_name);

	for (i = 0; i < data->n_params; i++)
		FUNC0(data->params[i]);

	if (data->synth_event)
		data->synth_event->ref--;

	FUNC0(data->synth_event_name);

	FUNC0(data);
}