#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct fscache_state {int dummy; } ;
struct fscache_object {int /*<<< orphan*/  lock; int /*<<< orphan*/  dependents; int /*<<< orphan*/  dep_link; TYPE_3__* cache; int /*<<< orphan*/  flags; TYPE_1__* state; struct fscache_object* parent; int /*<<< orphan*/  debug_id; } ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {scalar_t__ (* grab_object ) (struct fscache_object*,int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DROP_OBJECT ; 
 int /*<<< orphan*/  FSCACHE_OBJECT_EV_NEW_CHILD ; 
 int /*<<< orphan*/  PARENT_READY ; 
 int /*<<< orphan*/  WAIT_FOR_PARENT ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  fscache_n_cop_grab_object ; 
 int /*<<< orphan*/  fscache_obj_get_add_to_deps ; 
 scalar_t__ FUNC4 (struct fscache_object*) ; 
 scalar_t__ FUNC5 (struct fscache_object*) ; 
 scalar_t__ FUNC6 (struct fscache_object*) ; 
 int /*<<< orphan*/  FUNC7 (struct fscache_object*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (struct fscache_object*,int /*<<< orphan*/ ) ; 
 struct fscache_state const* FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct fscache_state *FUNC16(struct fscache_object *object,
							     int event)
{
	struct fscache_object *parent;
	bool success;

	FUNC2("{OBJ%x},%d", object->debug_id, event);

	FUNC0(FUNC11(&object->dep_link));

	parent = object->parent;
	if (!parent) {
		FUNC3(" [no parent]");
		return FUNC15(DROP_OBJECT);
	}

	FUNC1("parent: %s of:%lx", parent->state->name, parent->flags);

	if (FUNC5(parent)) {
		FUNC3(" [bad parent]");
		return FUNC15(DROP_OBJECT);
	}

	if (FUNC4(parent)) {
		FUNC3(" [ready]");
		return FUNC15(PARENT_READY);
	}

	FUNC1("wait");

	FUNC12(&parent->lock);
	FUNC8(&fscache_n_cop_grab_object);
	success = false;
	if (FUNC6(parent) &&
	    object->cache->ops->grab_object(object, fscache_obj_get_add_to_deps)) {
		FUNC10(&object->dep_link, &parent->dependents);
		success = true;
	}
	FUNC9(&fscache_n_cop_grab_object);
	FUNC13(&parent->lock);
	if (!success) {
		FUNC3(" [grab failed]");
		return FUNC15(DROP_OBJECT);
	}

	/* fscache_acquire_non_index_cookie() uses this
	 * to wake the chain up */
	FUNC7(parent, FSCACHE_OBJECT_EV_NEW_CHILD);
	FUNC3(" [wait]");
	return FUNC15(WAIT_FOR_PARENT);
}