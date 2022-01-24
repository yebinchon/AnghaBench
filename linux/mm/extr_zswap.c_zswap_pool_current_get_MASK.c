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
struct zswap_pool {int dummy; } ;

/* Variables and functions */
 struct zswap_pool* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct zswap_pool*) ; 

__attribute__((used)) static struct zswap_pool *FUNC4(void)
{
	struct zswap_pool *pool;

	FUNC1();

	pool = FUNC0();
	if (!FUNC3(pool))
		pool = NULL;

	FUNC2();

	return pool;
}