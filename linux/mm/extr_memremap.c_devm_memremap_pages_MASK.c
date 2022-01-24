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
struct dev_pagemap {int dummy; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int FUNC3 (struct device*,int /*<<< orphan*/ ,struct dev_pagemap*) ; 
 int /*<<< orphan*/  devm_memremap_pages_release ; 
 void* FUNC4 (struct dev_pagemap*,int /*<<< orphan*/ ) ; 

void *FUNC5(struct device *dev, struct dev_pagemap *pgmap)
{
	int error;
	void *ret;

	ret = FUNC4(pgmap, FUNC2(dev));
	if (FUNC1(ret))
		return ret;

	error = FUNC3(dev, devm_memremap_pages_release,
			pgmap);
	if (error)
		return FUNC0(error);
	return ret;
}