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
struct gen_pool {void* data; scalar_t__ algo; } ;
typedef  scalar_t__ genpool_algo_t ;

/* Variables and functions */
 scalar_t__ gen_pool_first_fit ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(struct gen_pool *pool, genpool_algo_t algo, void *data)
{
	FUNC0();

	pool->algo = algo;
	if (!pool->algo)
		pool->algo = gen_pool_first_fit;

	pool->data = data;

	FUNC1();
}