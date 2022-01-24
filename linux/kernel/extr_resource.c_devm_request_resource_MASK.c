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
struct resource {int /*<<< orphan*/  name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,struct resource*,int /*<<< orphan*/ ,struct resource*) ; 
 int /*<<< orphan*/  devm_resource_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct resource**) ; 
 struct resource** FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resource**) ; 
 struct resource* FUNC4 (struct resource*,struct resource*) ; 

int FUNC5(struct device *dev, struct resource *root,
			  struct resource *new)
{
	struct resource *conflict, **ptr;

	ptr = FUNC2(devm_resource_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		return -ENOMEM;

	*ptr = new;

	conflict = FUNC4(root, new);
	if (conflict) {
		FUNC0(dev, "resource collision: %pR conflicts with %s %pR\n",
			new, conflict->name, conflict);
		FUNC3(ptr);
		return -EBUSY;
	}

	FUNC1(dev, ptr);
	return 0;
}