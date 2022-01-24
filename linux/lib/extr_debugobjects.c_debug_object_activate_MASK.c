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
struct debug_obj_descr {int /*<<< orphan*/  fixup_activate; scalar_t__ (* is_static_object ) (void*) ;} ;
struct debug_obj {void* object; int state; struct debug_obj_descr* descr; } ;
struct debug_bucket {int /*<<< orphan*/  lock; } ;
typedef  enum debug_obj_state { ____Placeholder_debug_obj_state } debug_obj_state ;

/* Variables and functions */
 int EINVAL ; 
#define  ODEBUG_STATE_ACTIVE 131 
#define  ODEBUG_STATE_DESTROYED 130 
#define  ODEBUG_STATE_INACTIVE 129 
#define  ODEBUG_STATE_INIT 128 
 int ODEBUG_STATE_NOTAVAILABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct debug_obj_descr*) ; 
 int /*<<< orphan*/  debug_objects_enabled ; 
 int /*<<< orphan*/  FUNC2 (struct debug_obj*,char*) ; 
 struct debug_bucket* FUNC3 (unsigned long) ; 
 struct debug_obj* FUNC4 (void*,struct debug_bucket*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (void*) ; 

int FUNC8(void *addr, struct debug_obj_descr *descr)
{
	enum debug_obj_state state;
	struct debug_bucket *db;
	struct debug_obj *obj;
	unsigned long flags;
	int ret;
	struct debug_obj o = { .object = addr,
			       .state = ODEBUG_STATE_NOTAVAILABLE,
			       .descr = descr };

	if (!debug_objects_enabled)
		return 0;

	db = FUNC3((unsigned long) addr);

	FUNC5(&db->lock, flags);

	obj = FUNC4(addr, db);
	if (obj) {
		bool print_object = false;

		switch (obj->state) {
		case ODEBUG_STATE_INIT:
		case ODEBUG_STATE_INACTIVE:
			obj->state = ODEBUG_STATE_ACTIVE;
			ret = 0;
			break;

		case ODEBUG_STATE_ACTIVE:
			state = obj->state;
			FUNC6(&db->lock, flags);
			FUNC2(obj, "activate");
			ret = FUNC0(descr->fixup_activate, addr, state);
			return ret ? 0 : -EINVAL;

		case ODEBUG_STATE_DESTROYED:
			print_object = true;
			ret = -EINVAL;
			break;
		default:
			ret = 0;
			break;
		}
		FUNC6(&db->lock, flags);
		if (print_object)
			FUNC2(obj, "activate");
		return ret;
	}

	FUNC6(&db->lock, flags);

	/*
	 * We are here when a static object is activated. We
	 * let the type specific code confirm whether this is
	 * true or not. if true, we just make sure that the
	 * static object is tracked in the object tracker. If
	 * not, this must be a bug, so we try to fix it up.
	 */
	if (descr->is_static_object && descr->is_static_object(addr)) {
		/* track this static object */
		FUNC1(addr, descr);
		FUNC8(addr, descr);
	} else {
		FUNC2(&o, "activate");
		ret = FUNC0(descr->fixup_activate, addr,
					ODEBUG_STATE_NOTAVAILABLE);
		return ret ? 0 : -EINVAL;
	}
	return 0;
}