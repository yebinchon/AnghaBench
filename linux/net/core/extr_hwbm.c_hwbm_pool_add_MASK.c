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
struct hwbm_pool {scalar_t__ buf_num; scalar_t__ size; int /*<<< orphan*/  buf_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct hwbm_pool*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

int FUNC5(struct hwbm_pool *bm_pool, unsigned int buf_num)
{
	int err, i;

	FUNC1(&bm_pool->buf_lock);
	if (bm_pool->buf_num == bm_pool->size) {
		FUNC4("pool already filled\n");
		FUNC2(&bm_pool->buf_lock);
		return bm_pool->buf_num;
	}

	if (buf_num + bm_pool->buf_num > bm_pool->size) {
		FUNC4("cannot allocate %d buffers for pool\n",
			buf_num);
		FUNC2(&bm_pool->buf_lock);
		return 0;
	}

	if ((buf_num + bm_pool->buf_num) < bm_pool->buf_num) {
		FUNC4("Adding %d buffers to the %d current buffers will overflow\n",
			buf_num,  bm_pool->buf_num);
		FUNC2(&bm_pool->buf_lock);
		return 0;
	}

	for (i = 0; i < buf_num; i++) {
		err = FUNC0(bm_pool, GFP_KERNEL);
		if (err < 0)
			break;
	}

	/* Update BM driver with number of buffers added to pool */
	bm_pool->buf_num += i;

	FUNC3("hwpm pool: %d of %d buffers added\n", i, buf_num);
	FUNC2(&bm_pool->buf_lock);

	return i;
}