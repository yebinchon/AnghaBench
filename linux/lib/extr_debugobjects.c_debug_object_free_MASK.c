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
struct debug_obj_descr {int /*<<< orphan*/  fixup_free; } ;
struct debug_obj {int state; int /*<<< orphan*/  node; } ;
struct debug_bucket {int /*<<< orphan*/  lock; } ;
typedef  enum debug_obj_state { ____Placeholder_debug_obj_state } debug_obj_state ;

/* Variables and functions */
#define  ODEBUG_STATE_ACTIVE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  debug_objects_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct debug_obj*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct debug_obj*) ; 
 struct debug_bucket* FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct debug_obj* FUNC5 (void*,struct debug_bucket*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC8(void *addr, struct debug_obj_descr *descr)
{
	enum debug_obj_state state;
	struct debug_bucket *db;
	struct debug_obj *obj;
	unsigned long flags;

	if (!debug_objects_enabled)
		return;

	db = FUNC3((unsigned long) addr);

	FUNC6(&db->lock, flags);

	obj = FUNC5(addr, db);
	if (!obj)
		goto out_unlock;

	switch (obj->state) {
	case ODEBUG_STATE_ACTIVE:
		state = obj->state;
		FUNC7(&db->lock, flags);
		FUNC1(obj, "free");
		FUNC0(descr->fixup_free, addr, state);
		return;
	default:
		FUNC4(&obj->node);
		FUNC7(&db->lock, flags);
		FUNC2(obj);
		return;
	}
out_unlock:
	FUNC7(&db->lock, flags);
}