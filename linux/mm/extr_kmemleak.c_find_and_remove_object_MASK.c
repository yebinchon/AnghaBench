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
struct kmemleak_object {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  kmemleak_lock ; 
 struct kmemleak_object* FUNC1 (unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct kmemleak_object *FUNC4(unsigned long ptr, int alias)
{
	unsigned long flags;
	struct kmemleak_object *object;

	FUNC2(&kmemleak_lock, flags);
	object = FUNC1(ptr, alias);
	if (object)
		FUNC0(object);
	FUNC3(&kmemleak_lock, flags);

	return object;
}