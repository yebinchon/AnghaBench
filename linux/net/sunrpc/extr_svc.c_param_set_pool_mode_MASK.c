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
struct svc_pool_map {scalar_t__ count; } ;
struct kernel_param {scalar_t__ arg; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int SVC_POOL_AUTO ; 
 int SVC_POOL_GLOBAL ; 
 int SVC_POOL_PERCPU ; 
 int SVC_POOL_PERNODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 struct svc_pool_map svc_pool_map ; 
 int /*<<< orphan*/  svc_pool_map_mutex ; 

__attribute__((used)) static int
FUNC3(const char *val, const struct kernel_param *kp)
{
	int *ip = (int *)kp->arg;
	struct svc_pool_map *m = &svc_pool_map;
	int err;

	FUNC0(&svc_pool_map_mutex);

	err = -EBUSY;
	if (m->count)
		goto out;

	err = 0;
	if (!FUNC2(val, "auto", 4))
		*ip = SVC_POOL_AUTO;
	else if (!FUNC2(val, "global", 6))
		*ip = SVC_POOL_GLOBAL;
	else if (!FUNC2(val, "percpu", 6))
		*ip = SVC_POOL_PERCPU;
	else if (!FUNC2(val, "pernode", 7))
		*ip = SVC_POOL_PERNODE;
	else
		err = -EINVAL;

out:
	FUNC1(&svc_pool_map_mutex);
	return err;
}