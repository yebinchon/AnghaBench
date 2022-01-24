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
struct klp_shadow {unsigned long id; void* data; void* obj; int /*<<< orphan*/  node; } ;
typedef  int (* klp_shadow_ctor_t ) (void*,void*,void*) ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,void*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct klp_shadow*) ; 
 void* FUNC3 (void*,unsigned long) ; 
 int /*<<< orphan*/  klp_shadow_hash ; 
 int /*<<< orphan*/  klp_shadow_lock ; 
 struct klp_shadow* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,void*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (void*) ; 

__attribute__((used)) static void *FUNC9(void *obj, unsigned long id,
				       size_t size, gfp_t gfp_flags,
				       klp_shadow_ctor_t ctor, void *ctor_data,
				       bool warn_on_exist)
{
	struct klp_shadow *new_shadow;
	void *shadow_data;
	unsigned long flags;

	/* Check if the shadow variable already exists */
	shadow_data = FUNC3(obj, id);
	if (shadow_data)
		goto exists;

	/*
	 * Allocate a new shadow variable.  Fill it with zeroes by default.
	 * More complex setting can be done by @ctor function.  But it is
	 * called only when the buffer is really used (under klp_shadow_lock).
	 */
	new_shadow = FUNC4(size + sizeof(*new_shadow), gfp_flags);
	if (!new_shadow)
		return NULL;

	/* Look for <obj, id> again under the lock */
	FUNC6(&klp_shadow_lock, flags);
	shadow_data = FUNC3(obj, id);
	if (FUNC8(shadow_data)) {
		/*
		 * Shadow variable was found, throw away speculative
		 * allocation.
		 */
		FUNC7(&klp_shadow_lock, flags);
		FUNC2(new_shadow);
		goto exists;
	}

	new_shadow->obj = obj;
	new_shadow->id = id;

	if (ctor) {
		int err;

		err = ctor(obj, new_shadow->data, ctor_data);
		if (err) {
			FUNC7(&klp_shadow_lock, flags);
			FUNC2(new_shadow);
			FUNC5("Failed to construct shadow variable <%p, %lx> (%d)\n",
			       obj, id, err);
			return NULL;
		}
	}

	/* No <obj, id> found, so attach the newly allocated one */
	FUNC1(klp_shadow_hash, &new_shadow->node,
		     (unsigned long)new_shadow->obj);
	FUNC7(&klp_shadow_lock, flags);

	return new_shadow->data;

exists:
	if (warn_on_exist) {
		FUNC0(1, "Duplicate shadow variable <%p, %lx>\n", obj, id);
		return NULL;
	}

	return shadow_data;
}