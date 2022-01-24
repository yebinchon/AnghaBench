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
struct kmemleak_object {unsigned long pointer; unsigned long size; int /*<<< orphan*/  min_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct kmemleak_object* FUNC2 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long,size_t) ; 

__attribute__((used)) static void FUNC4(unsigned long ptr, size_t size)
{
	struct kmemleak_object *object;
	unsigned long start, end;

	object = FUNC2(ptr, 1);
	if (!object) {
#ifdef DEBUG
		kmemleak_warn("Partially freeing unknown object at 0x%08lx (size %zu)\n",
			      ptr, size);
#endif
		return;
	}

	/*
	 * Create one or two objects that may result from the memory block
	 * split. Note that partial freeing is only done by free_bootmem() and
	 * this happens before kmemleak_init() is called.
	 */
	start = object->pointer;
	end = object->pointer + object->size;
	if (ptr > start)
		FUNC1(start, ptr - start, object->min_count,
			      GFP_KERNEL);
	if (ptr + size < end)
		FUNC1(ptr + size, end - ptr - size, object->min_count,
			      GFP_KERNEL);

	FUNC0(object);
}