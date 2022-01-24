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
struct hwbm_pool {int frag_size; scalar_t__ (* construct ) (struct hwbm_pool*,void*) ;} ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct hwbm_pool*,void*) ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct hwbm_pool*,void*) ; 

int FUNC5(struct hwbm_pool *bm_pool, gfp_t gfp)
{
	int frag_size = bm_pool->frag_size;
	void *buf;

	if (FUNC2(frag_size <= PAGE_SIZE))
		buf = FUNC3(frag_size);
	else
		buf = FUNC1(frag_size, gfp);

	if (!buf)
		return -ENOMEM;

	if (bm_pool->construct)
		if (bm_pool->construct(bm_pool, buf)) {
			FUNC0(bm_pool, buf);
			return -ENOMEM;
		}

	return 0;
}