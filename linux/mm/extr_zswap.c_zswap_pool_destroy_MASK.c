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
struct zswap_pool {int /*<<< orphan*/  zpool; int /*<<< orphan*/  tfm; int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPUHP_MM_ZSWP_POOL_PREPARE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct zswap_pool*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,struct zswap_pool*) ; 

__attribute__((used)) static void FUNC5(struct zswap_pool *pool)
{
	FUNC4("destroying", pool);

	FUNC0(CPUHP_MM_ZSWP_POOL_PREPARE, &pool->node);
	FUNC1(pool->tfm);
	FUNC3(pool->zpool);
	FUNC2(pool);
}