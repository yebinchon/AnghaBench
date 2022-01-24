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
struct kmem_cache {int /*<<< orphan*/  object_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC1 (struct kmem_cache*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void const*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 struct kmem_cache* FUNC9 (void const*) ; 

void FUNC10(const void *objp)
{
	struct kmem_cache *c;
	unsigned long flags;

	FUNC7(_RET_IP_, objp);

	if (FUNC8(FUNC0(objp)))
		return;
	FUNC6(flags);
	FUNC4(objp);
	c = FUNC9(objp);
	if (!c) {
		FUNC5(flags);
		return;
	}
	FUNC2(objp, c->object_size);

	FUNC3(objp, c->object_size);
	FUNC1(c, (void *)objp, _RET_IP_);
	FUNC5(flags);
}