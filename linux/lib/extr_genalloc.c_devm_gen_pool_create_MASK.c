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
struct gen_pool {char const* name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct gen_pool* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  devm_gen_pool_release ; 
 int /*<<< orphan*/  FUNC1 (struct device*,struct gen_pool**) ; 
 struct gen_pool** FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gen_pool**) ; 
 struct gen_pool* FUNC4 (int,int) ; 
 scalar_t__ FUNC5 (struct device*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ) ; 

struct gen_pool *FUNC8(struct device *dev, int min_alloc_order,
				      int nid, const char *name)
{
	struct gen_pool **ptr, *pool;
	const char *pool_name = NULL;

	/* Check that genpool to be created is uniquely addressed on device */
	if (FUNC5(dev, name))
		return FUNC0(-EINVAL);

	if (name) {
		pool_name = FUNC7(name, GFP_KERNEL);
		if (!pool_name)
			return FUNC0(-ENOMEM);
	}

	ptr = FUNC2(devm_gen_pool_release, sizeof(*ptr), GFP_KERNEL);
	if (!ptr)
		goto free_pool_name;

	pool = FUNC4(min_alloc_order, nid);
	if (!pool)
		goto free_devres;

	*ptr = pool;
	pool->name = pool_name;
	FUNC1(dev, ptr);

	return pool;

free_devres:
	FUNC3(ptr);
free_pool_name:
	FUNC6(pool_name);

	return FUNC0(-ENOMEM);
}