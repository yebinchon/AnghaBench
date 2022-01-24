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
struct kmemleak_object {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  use_count; } ;

/* Variables and functions */
 int OBJECT_ALLOCATED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct kmemleak_object *object)
{
	unsigned long flags;

	FUNC0(!(object->flags & OBJECT_ALLOCATED));
	FUNC0(FUNC1(&object->use_count) < 1);

	/*
	 * Locking here also ensures that the corresponding memory block
	 * cannot be freed when it is being scanned.
	 */
	FUNC3(&object->lock, flags);
	object->flags &= ~OBJECT_ALLOCATED;
	FUNC4(&object->lock, flags);
	FUNC2(object);
}