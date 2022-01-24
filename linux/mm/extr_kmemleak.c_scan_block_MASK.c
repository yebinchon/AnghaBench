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
struct kmemleak_object {unsigned long excess_ref; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 void* BYTES_PER_POINTER ; 
 unsigned long* FUNC0 (void*,void*) ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 scalar_t__ FUNC1 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  kmemleak_lock ; 
 struct kmemleak_object* FUNC5 (unsigned long,int) ; 
 unsigned long max_addr ; 
 unsigned long min_addr ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct kmemleak_object*) ; 

__attribute__((used)) static void FUNC12(void *_start, void *_end,
		       struct kmemleak_object *scanned)
{
	unsigned long *ptr;
	unsigned long *start = FUNC0(_start, BYTES_PER_POINTER);
	unsigned long *end = _end - (BYTES_PER_POINTER - 1);
	unsigned long flags;
	unsigned long untagged_ptr;

	FUNC6(&kmemleak_lock, flags);
	for (ptr = start; ptr < end; ptr++) {
		struct kmemleak_object *object;
		unsigned long pointer;
		unsigned long excess_ref;

		if (FUNC8())
			break;

		FUNC2();
		pointer = *ptr;
		FUNC3();

		untagged_ptr = (unsigned long)FUNC4((void *)pointer);
		if (untagged_ptr < min_addr || untagged_ptr >= max_addr)
			continue;

		/*
		 * No need for get_object() here since we hold kmemleak_lock.
		 * object->use_count cannot be dropped to 0 while the object
		 * is still present in object_tree_root and object_list
		 * (with updates protected by kmemleak_lock).
		 */
		object = FUNC5(pointer, 1);
		if (!object)
			continue;
		if (object == scanned)
			/* self referenced, ignore */
			continue;

		/*
		 * Avoid the lockdep recursive warning on object->lock being
		 * previously acquired in scan_object(). These locks are
		 * enclosed by scan_mutex.
		 */
		FUNC9(&object->lock, SINGLE_DEPTH_NESTING);
		/* only pass surplus references (object already gray) */
		if (FUNC1(object)) {
			excess_ref = object->excess_ref;
			/* no need for update_refs() if object already gray */
		} else {
			excess_ref = 0;
			FUNC11(object);
		}
		FUNC10(&object->lock);

		if (excess_ref) {
			object = FUNC5(excess_ref, 0);
			if (!object)
				continue;
			if (object == scanned)
				/* circular reference, ignore */
				continue;
			FUNC9(&object->lock, SINGLE_DEPTH_NESTING);
			FUNC11(object);
			FUNC10(&object->lock);
		}
	}
	FUNC7(&kmemleak_lock, flags);
}