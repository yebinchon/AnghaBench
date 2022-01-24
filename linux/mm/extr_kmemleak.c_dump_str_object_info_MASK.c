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
struct kmemleak_object {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct kmemleak_object*) ; 
 struct kmemleak_object* FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct kmemleak_object*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC7(const char *str)
{
	unsigned long flags;
	struct kmemleak_object *object;
	unsigned long addr;

	if (FUNC2(str, 0, &addr))
		return -EINVAL;
	object = FUNC1(addr, 0);
	if (!object) {
		FUNC3("Unknown object at 0x%08lx\n", addr);
		return -EINVAL;
	}

	FUNC5(&object->lock, flags);
	FUNC0(object);
	FUNC6(&object->lock, flags);

	FUNC4(object);
	return 0;
}