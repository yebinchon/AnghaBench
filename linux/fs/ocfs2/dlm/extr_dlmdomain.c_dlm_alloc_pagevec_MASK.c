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
 scalar_t__ DLM_BUCKETS_PER_PAGE ; 
 scalar_t__ DLM_HASH_PAGES ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void**,int) ; 
 void** FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,unsigned long,unsigned long) ; 

__attribute__((used)) static void **FUNC4(int pages)
{
	void **vec = FUNC2(pages, sizeof(void *), GFP_KERNEL);
	int i;

	if (!vec)
		return NULL;

	for (i = 0; i < pages; i++)
		if (!(vec[i] = (void *)FUNC0(GFP_KERNEL)))
			goto out_free;

	FUNC3(0, "Allocated DLM hash pagevec; %d pages (%lu expected), %lu buckets per page\n",
	     pages, (unsigned long)DLM_HASH_PAGES,
	     (unsigned long)DLM_BUCKETS_PER_PAGE);
	return vec;
out_free:
	FUNC1(vec, i);
	return NULL;
}