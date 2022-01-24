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
struct workqueue_struct {int dummy; } ;
struct workqueue_attrs {int dummy; } ;
struct worker_pool {int /*<<< orphan*/  node; } ;
struct pool_workqueue {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct worker_pool* FUNC0 (struct workqueue_attrs const*) ; 
 int /*<<< orphan*/  FUNC1 (struct pool_workqueue*,struct workqueue_struct*,struct worker_pool*) ; 
 struct pool_workqueue* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct worker_pool*) ; 
 int /*<<< orphan*/  pwq_cache ; 
 int /*<<< orphan*/  wq_pool_mutex ; 

__attribute__((used)) static struct pool_workqueue *FUNC5(struct workqueue_struct *wq,
					const struct workqueue_attrs *attrs)
{
	struct worker_pool *pool;
	struct pool_workqueue *pwq;

	FUNC3(&wq_pool_mutex);

	pool = FUNC0(attrs);
	if (!pool)
		return NULL;

	pwq = FUNC2(pwq_cache, GFP_KERNEL, pool->node);
	if (!pwq) {
		FUNC4(pool);
		return NULL;
	}

	FUNC1(pwq, wq, pool);
	return pwq;
}