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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 () ; 
 int zswap_max_pool_percent ; 
 int /*<<< orphan*/  zswap_pool_total_size ; 

__attribute__((used)) static bool FUNC2(void)
{
	return FUNC1() * zswap_max_pool_percent / 100 <
			FUNC0(zswap_pool_total_size, PAGE_SIZE);
}