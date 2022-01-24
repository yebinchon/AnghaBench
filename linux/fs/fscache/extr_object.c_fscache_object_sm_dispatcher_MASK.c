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
struct fscache_transition {int events; struct fscache_state const* transit_to; } ;
typedef  struct fscache_state {struct fscache_transition* transitions; struct fscache_state const* (* work ) (struct fscache_object*,int) ;int /*<<< orphan*/  name; } const fscache_state ;
struct fscache_object {unsigned long events; unsigned long event_mask; unsigned long oob_event_mask; struct fscache_state const* state; int /*<<< orphan*/  debug_id; struct fscache_transition* oob_table; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct fscache_state const* NO_TRANSIT ; 
 int /*<<< orphan*/  OBJECT_DEAD ; 
 struct fscache_state const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,unsigned long,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int,unsigned long*) ; 
 int FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (struct fscache_object*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 struct fscache_state const* FUNC11 (struct fscache_object*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct fscache_object*,struct fscache_state const*,int,int,int) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static void FUNC14(struct fscache_object *object)
{
	const struct fscache_transition *t;
	const struct fscache_state *state, *new_state;
	unsigned long events, event_mask;
	bool oob;
	int event = -1;

	FUNC0(object != NULL);

	FUNC5("{OBJ%x,%s,%lx}",
	       object->debug_id, object->state->name, object->events);

	event_mask = object->event_mask;
restart:
	object->event_mask = 0; /* Mask normal event handling */
	state = object->state;
restart_masked:
	events = object->events;

	/* Handle any out-of-band events (typically an error) */
	if (events & object->oob_event_mask) {
		FUNC4("{OBJ%x} oob %lx",
		       object->debug_id, events & object->oob_event_mask);
		oob = true;
		for (t = object->oob_table; t->events; t++) {
			if (events & t->events) {
				state = t->transit_to;
				FUNC0(state->work != NULL);
				event = FUNC8(events & t->events) - 1;
				FUNC3(event, &object->oob_event_mask);
				FUNC7(event, &object->events);
				goto execute_work_state;
			}
		}
	}
	oob = false;

	/* Wait states are just transition tables */
	if (!state->work) {
		if (events & event_mask) {
			for (t = state->transitions; t->events; t++) {
				if (events & t->events) {
					new_state = t->transit_to;
					event = FUNC8(events & t->events) - 1;
					FUNC12(object, state,
							  true, false, event);
					FUNC7(event, &object->events);
					FUNC4("{OBJ%x} ev %d: %s -> %s",
					       object->debug_id, event,
					       state->name, new_state->name);
					object->state = state = new_state;
					goto execute_work_state;
				}
			}

			/* The event mask didn't include all the tabled bits */
			FUNC1();
		}
		/* Randomly woke up */
		goto unmask_events;
	}

execute_work_state:
	FUNC4("{OBJ%x} exec %s", object->debug_id, state->name);

	FUNC12(object, state, false, oob, event);
	new_state = state->work(object, event);
	event = -1;
	if (new_state == NO_TRANSIT) {
		FUNC4("{OBJ%x} %s notrans", object->debug_id, state->name);
		if (FUNC13(state == FUNC2(OBJECT_DEAD))) {
			FUNC6(" [dead]");
			return;
		}
		FUNC9(object);
		event_mask = object->oob_event_mask;
		goto unmask_events;
	}

	FUNC4("{OBJ%x} %s -> %s",
	       object->debug_id, state->name, new_state->name);
	object->state = state = new_state;

	if (state->work) {
		if (FUNC13(state == FUNC2(OBJECT_DEAD))) {
			FUNC6(" [dead]");
			return;
		}
		goto restart_masked;
	}

	/* Transited to wait state */
	event_mask = object->oob_event_mask;
	for (t = state->transitions; t->events; t++)
		event_mask |= t->events;

unmask_events:
	object->event_mask = event_mask;
	FUNC10();
	events = object->events;
	if (events & event_mask)
		goto restart;
	FUNC6(" [msk %lx]", event_mask);
}