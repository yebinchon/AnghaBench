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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct resource* bootmem_resource_free ; 
 int /*<<< orphan*/  bootmem_resource_lock ; 
 struct resource* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct resource*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct resource *FUNC4(gfp_t flags)
{
	struct resource *res = NULL;

	FUNC2(&bootmem_resource_lock);
	if (bootmem_resource_free) {
		res = bootmem_resource_free;
		bootmem_resource_free = res->sibling;
	}
	FUNC3(&bootmem_resource_lock);

	if (res)
		FUNC1(res, 0, sizeof(struct resource));
	else
		res = FUNC0(sizeof(struct resource), flags);

	return res;
}