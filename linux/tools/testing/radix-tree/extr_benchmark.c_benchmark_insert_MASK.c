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
struct timespec {long long tv_sec; long long tv_nsec; } ;
struct radix_tree_root {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLOCK_MONOTONIC ; 
 long long NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct radix_tree_root*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,unsigned long,unsigned long,long long) ; 

__attribute__((used)) static void FUNC3(struct radix_tree_root *root,
			     unsigned long size, unsigned long step)
{
	struct timespec start, finish;
	unsigned long index;
	long long nsec;

	FUNC0(CLOCK_MONOTONIC, &start);

	for (index = 0 ; index < size ; index += step)
		FUNC1(root, index);

	FUNC0(CLOCK_MONOTONIC, &finish);

	nsec = (finish.tv_sec - start.tv_sec) * NSEC_PER_SEC +
	       (finish.tv_nsec - start.tv_nsec);

	FUNC2(2, "Size: %8ld, step: %8ld, insertion: %15lld ns\n",
		size, step, nsec);
}