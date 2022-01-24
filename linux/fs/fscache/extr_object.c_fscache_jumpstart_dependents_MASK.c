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
struct fscache_state {int dummy; } ;
struct fscache_object {int /*<<< orphan*/  debug_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSCACHE_OBJECT_EV_PARENT_READY ; 
 struct fscache_state const* NO_TRANSIT ; 
 int /*<<< orphan*/  WAIT_FOR_CMD ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct fscache_object*,int /*<<< orphan*/ ) ; 
 struct fscache_state const* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct fscache_state *FUNC3(struct fscache_object *object,
								int event)
{
	FUNC0("{OBJ%x},%d", object->debug_id, event);

	if (!FUNC1(object, FSCACHE_OBJECT_EV_PARENT_READY))
		return NO_TRANSIT; /* Not finished; requeue */
	return FUNC2(WAIT_FOR_CMD);
}