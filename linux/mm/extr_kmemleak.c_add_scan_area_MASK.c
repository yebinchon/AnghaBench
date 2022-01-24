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
struct kmemleak_scan_area {unsigned long start; size_t size; int /*<<< orphan*/  node; } ;
struct kmemleak_object {unsigned long pointer; unsigned long size; int /*<<< orphan*/  lock; int /*<<< orphan*/  area_list; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OBJECT_FULL_SCAN ; 
 size_t SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct kmemleak_object*) ; 
 struct kmemleak_object* FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kmemleak_scan_area* FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,struct kmemleak_scan_area*) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct kmemleak_object*) ; 
 scalar_t__ scan_area_cache ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC12(unsigned long ptr, size_t size, gfp_t gfp)
{
	unsigned long flags;
	struct kmemleak_object *object;
	struct kmemleak_scan_area *area = NULL;

	object = FUNC2(ptr, 1);
	if (!object) {
		FUNC7("Adding scan area to unknown object at 0x%08lx\n",
			      ptr);
		return;
	}

	if (scan_area_cache)
		area = FUNC5(scan_area_cache, FUNC3(gfp));

	FUNC10(&object->lock, flags);
	if (!area) {
		FUNC8("Cannot allocate a scan area, scanning the full object\n");
		/* mark the object for full scan to avoid false positives */
		object->flags |= OBJECT_FULL_SCAN;
		goto out_unlock;
	}
	if (size == SIZE_MAX) {
		size = object->pointer + object->size - ptr;
	} else if (ptr + size > object->pointer + object->size) {
		FUNC7("Scan area larger than object 0x%08lx\n", ptr);
		FUNC1(object);
		FUNC6(scan_area_cache, area);
		goto out_unlock;
	}

	FUNC0(&area->node);
	area->start = ptr;
	area->size = size;

	FUNC4(&area->node, &object->area_list);
out_unlock:
	FUNC11(&object->lock, flags);
	FUNC9(object);
}