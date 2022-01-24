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
 struct kmemleak_object* FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(unsigned long ptr, unsigned long excess_ref)
{
	unsigned long flags;
	struct kmemleak_object *object;

	object = FUNC0(ptr, 0);
	if (!object) {
		FUNC1("Setting excess_ref on unknown object at 0x%08lx\n",
			      ptr);
		return;
	}

	FUNC3(&object->lock, flags);
	object->excess_ref = excess_ref;
	FUNC4(&object->lock, flags);
	FUNC2(object);
}