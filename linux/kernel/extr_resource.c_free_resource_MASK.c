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
struct resource {struct resource* sibling; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct resource* bootmem_resource_free ; 
 int /*<<< orphan*/  bootmem_resource_lock ; 
 int /*<<< orphan*/  FUNC1 (struct resource*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct resource*) ; 

__attribute__((used)) static void FUNC5(struct resource *res)
{
	if (!res)
		return;

	if (!FUNC0(FUNC4(res))) {
		FUNC2(&bootmem_resource_lock);
		res->sibling = bootmem_resource_free;
		bootmem_resource_free = res;
		FUNC3(&bootmem_resource_lock);
	} else {
		FUNC1(res);
	}
}