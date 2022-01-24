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
struct kmemleak_object {int /*<<< orphan*/  object_list; } ;

/* Variables and functions */
 int FUNC0 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct kmemleak_object*) ; 
 int /*<<< orphan*/  kmemleak_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct kmemleak_object* mem_pool ; 
 int /*<<< orphan*/  mem_pool_free_list ; 
 int /*<<< orphan*/  object_cache ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct kmemleak_object *object)
{
	unsigned long flags;

	if (object < mem_pool || object >= mem_pool + FUNC0(mem_pool)) {
		FUNC1(object_cache, object);
		return;
	}

	/* add the object to the memory pool free list */
	FUNC3(&kmemleak_lock, flags);
	FUNC2(&object->object_list, &mem_pool_free_list);
	FUNC4(&kmemleak_lock, flags);
}