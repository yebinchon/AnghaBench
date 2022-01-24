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
struct synth_field {int dummy; } ;
struct synth_event {int n_fields; struct synth_field** fields; int /*<<< orphan*/  devent; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 struct synth_event* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct synth_event*) ; 
 struct synth_field** FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct synth_event*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 struct synth_event* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  synth_event_ops ; 

__attribute__((used)) static struct synth_event *FUNC7(const char *name, int n_fields,
					     struct synth_field **fields)
{
	struct synth_event *event;
	unsigned int i;

	event = FUNC6(sizeof(*event), GFP_KERNEL);
	if (!event) {
		event = FUNC0(-ENOMEM);
		goto out;
	}

	event->name = FUNC5(name, GFP_KERNEL);
	if (!event->name) {
		FUNC4(event);
		event = FUNC0(-ENOMEM);
		goto out;
	}

	event->fields = FUNC3(n_fields, sizeof(*event->fields), GFP_KERNEL);
	if (!event->fields) {
		FUNC2(event);
		event = FUNC0(-ENOMEM);
		goto out;
	}

	FUNC1(&event->devent, &synth_event_ops);

	for (i = 0; i < n_fields; i++)
		event->fields[i] = fields[i];

	event->n_fields = n_fields;
 out:
	return event;
}