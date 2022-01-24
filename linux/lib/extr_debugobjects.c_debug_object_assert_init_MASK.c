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
struct debug_obj_descr {int /*<<< orphan*/  fixup_assert_init; scalar_t__ (* is_static_object ) (void*) ;} ;
struct debug_obj {void* object; struct debug_obj_descr* descr; int /*<<< orphan*/  state; } ;
struct debug_bucket {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ODEBUG_STATE_NOTAVAILABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*,struct debug_obj_descr*) ; 
 int /*<<< orphan*/  debug_objects_enabled ; 
 int /*<<< orphan*/  FUNC2 (struct debug_obj*,char*) ; 
 struct debug_bucket* FUNC3 (unsigned long) ; 
 struct debug_obj* FUNC4 (void*,struct debug_bucket*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (void*) ; 

void FUNC8(void *addr, struct debug_obj_descr *descr)
{
	struct debug_bucket *db;
	struct debug_obj *obj;
	unsigned long flags;

	if (!debug_objects_enabled)
		return;

	db = FUNC3((unsigned long) addr);

	FUNC5(&db->lock, flags);

	obj = FUNC4(addr, db);
	if (!obj) {
		struct debug_obj o = { .object = addr,
				       .state = ODEBUG_STATE_NOTAVAILABLE,
				       .descr = descr };

		FUNC6(&db->lock, flags);
		/*
		 * Maybe the object is static, and we let the type specific
		 * code confirm. Track this static object if true, else invoke
		 * fixup.
		 */
		if (descr->is_static_object && descr->is_static_object(addr)) {
			/* Track this static object */
			FUNC1(addr, descr);
		} else {
			FUNC2(&o, "assert_init");
			FUNC0(descr->fixup_assert_init, addr,
					   ODEBUG_STATE_NOTAVAILABLE);
		}
		return;
	}

	FUNC6(&db->lock, flags);
}