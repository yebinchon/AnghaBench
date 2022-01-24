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
struct kmemleak_object {int /*<<< orphan*/  gray_list; int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  FUNC2 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  FUNC3 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  gray_list ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct kmemleak_object *object)
{
	if (!FUNC2(object)) {
		/* non-orphan, ignored or new */
		return;
	}

	/*
	 * Increase the object's reference count (number of pointers to the
	 * memory block). If this count reaches the required minimum, the
	 * object's color will become gray and it will be added to the
	 * gray_list.
	 */
	object->count++;
	if (FUNC1(object)) {
		/* put_object() called when removing from gray_list */
		FUNC0(!FUNC3(object));
		FUNC4(&object->gray_list, &gray_list);
	}
}