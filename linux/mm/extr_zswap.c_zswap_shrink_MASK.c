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
struct zswap_pool {int /*<<< orphan*/  zpool; } ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct zswap_pool* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct zswap_pool*) ; 

__attribute__((used)) static int FUNC3(void)
{
	struct zswap_pool *pool;
	int ret;

	pool = FUNC1();
	if (!pool)
		return -ENOENT;

	ret = FUNC0(pool->zpool, 1, NULL);

	FUNC2(pool);

	return ret;
}