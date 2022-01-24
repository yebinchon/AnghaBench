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
struct radix_tree_root {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct radix_tree_root*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned long,unsigned long,unsigned long,int,int) ; 

void FUNC3(struct radix_tree_root *tree, unsigned long start, unsigned long end, unsigned long *idx, int count, int fromtag, int totag)
{
	int i;

	for (i = 0; i < count; i++) {
/*		if (i % 1000 == 0)
			putchar('.'); */
		if (idx[i] < start || idx[i] > end) {
			if (FUNC1(tree, idx[i], totag)) {
				FUNC2(2, "%lu-%lu: %lu, tags %d-%d\n", start,
				       end, idx[i], FUNC1(tree, idx[i],
								 fromtag),
				       FUNC1(tree, idx[i], totag));
			}
			FUNC0(!FUNC1(tree, idx[i], totag));
			continue;
		}
		if (FUNC1(tree, idx[i], fromtag) ^
			FUNC1(tree, idx[i], totag)) {
			FUNC2(2, "%lu-%lu: %lu, tags %d-%d\n", start, end,
			       idx[i], FUNC1(tree, idx[i], fromtag),
			       FUNC1(tree, idx[i], totag));
		}
		FUNC0(!(FUNC1(tree, idx[i], fromtag) ^
			 FUNC1(tree, idx[i], totag)));
	}
}