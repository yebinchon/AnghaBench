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
struct fscache_object {int /*<<< orphan*/  event_mask; int /*<<< orphan*/  events; int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int NR_FSCACHE_OBJECT_EVENTS ; 
 int /*<<< orphan*/  FUNC1 (struct fscache_object*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (unsigned int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC5(struct fscache_object *object,
				       unsigned event)
{
	FUNC0(event >= NR_FSCACHE_OBJECT_EVENTS);
#if 0
	printk("*** fscache_raise_event(OBJ%d{%lx},%x)\n",
	       object->debug_id, object->event_mask, (1 << event));
#endif
	if (!FUNC3(event, &object->events) &&
	    FUNC4(event, &object->event_mask))
		FUNC1(object);
}