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
struct rhashtable_params {int nelem_hint; scalar_t__ min_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  HASH_DEFAULT_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static size_t FUNC2(const struct rhashtable_params *params)
{
	size_t retsize;

	if (params->nelem_hint)
		retsize = FUNC0(FUNC1(params->nelem_hint * 4 / 3),
			      (unsigned long)params->min_size);
	else
		retsize = FUNC0(HASH_DEFAULT_SIZE,
			      (unsigned long)params->min_size);

	return retsize;
}