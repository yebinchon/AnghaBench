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
typedef  int /*<<< orphan*/  tree ;
struct partition_group {int start; int length; } ;
typedef  int /*<<< orphan*/  ranctx ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long,struct partition_group*,unsigned long*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(tree *newtree, unsigned long length, ranctx *prng_state)
{
	unsigned long i, x;
	struct partition_group size_group[length];
	unsigned long num_groups = 0;
	unsigned long randnum;

	FUNC1(newtree, length, (struct partition_group *)&size_group, &num_groups);
	for (i = num_groups - 1; i > 0; i--) {
		struct partition_group tmp;
		randnum = FUNC2(prng_state) % (i + 1);
		tmp = size_group[i];
		size_group[i] = size_group[randnum];
		size_group[randnum] = tmp;
	}

	for (x = 0; x < num_groups; x++) {
		for (i = size_group[x].start + size_group[x].length - 1; i > size_group[x].start; i--) {
			tree tmp;
			if (FUNC0(newtree[i]))
				continue;
			randnum = FUNC2(prng_state) % (i + 1);
			// we could handle this case differently if desired
			if (FUNC0(newtree[randnum]))
				continue;
			tmp = newtree[i];
			newtree[i] = newtree[randnum];
			newtree[randnum] = tmp;
		}
	}
}