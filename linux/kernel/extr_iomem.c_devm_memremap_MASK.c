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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENXIO ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  devm_memremap_release ; 
 int /*<<< orphan*/  FUNC2 (struct device*,void**) ; 
 void** FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void**) ; 
 void* FUNC5 (int /*<<< orphan*/ ,size_t,unsigned long) ; 

void *FUNC6(struct device *dev, resource_size_t offset,
		size_t size, unsigned long flags)
{
	void **ptr, *addr;

	ptr = FUNC3(devm_memremap_release, sizeof(*ptr), GFP_KERNEL,
			FUNC1(dev));
	if (!ptr)
		return FUNC0(-ENOMEM);

	addr = FUNC5(offset, size, flags);
	if (addr) {
		*ptr = addr;
		FUNC2(dev, ptr);
	} else {
		FUNC4(ptr);
		return FUNC0(-ENXIO);
	}

	return addr;
}