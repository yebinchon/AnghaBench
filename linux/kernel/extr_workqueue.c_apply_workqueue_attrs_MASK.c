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

/* Variables and functions */
 int FUNC0 (struct workqueue_struct*,struct workqueue_attrs const*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wq_pool_mutex ; 

int FUNC4(struct workqueue_struct *wq,
			  const struct workqueue_attrs *attrs)
{
	int ret;

	FUNC1();

	FUNC2(&wq_pool_mutex);
	ret = FUNC0(wq, attrs);
	FUNC3(&wq_pool_mutex);

	return ret;
}