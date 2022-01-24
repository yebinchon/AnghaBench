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
struct resource {int dummy; } ;
struct region_devres {void* n; void* start; struct resource* parent; } ;
struct device {int dummy; } ;
typedef  void* resource_size_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct resource* FUNC0 (struct resource*,void*,void*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  devm_region_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct region_devres*) ; 
 struct region_devres* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct region_devres*) ; 

struct resource *
FUNC4(struct device *dev, struct resource *parent,
		      resource_size_t start, resource_size_t n, const char *name)
{
	struct region_devres *dr = NULL;
	struct resource *res;

	dr = FUNC2(devm_region_release, sizeof(struct region_devres),
			  GFP_KERNEL);
	if (!dr)
		return NULL;

	dr->parent = parent;
	dr->start = start;
	dr->n = n;

	res = FUNC0(parent, start, n, name, 0);
	if (res)
		FUNC1(dev, dr);
	else
		FUNC3(dr);

	return res;
}