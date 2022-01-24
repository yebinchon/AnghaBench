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
struct svc_serv {int sv_nrthreads; } ;
struct svc_pool {int /*<<< orphan*/  sp_lock; scalar_t__ sp_nrthreads; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct svc_serv*,struct svc_pool*,int) ; 
 int FUNC3 (struct svc_serv*,struct svc_pool*,int) ; 

int
FUNC4(struct svc_serv *serv, struct svc_pool *pool, int nrservs)
{
	if (pool == NULL) {
		/* The -1 assumes caller has done a svc_get() */
		nrservs -= (serv->sv_nrthreads-1);
	} else {
		FUNC0(&pool->sp_lock);
		nrservs -= pool->sp_nrthreads;
		FUNC1(&pool->sp_lock);
	}

	if (nrservs > 0)
		return FUNC2(serv, pool, nrservs);
	if (nrservs < 0)
		return FUNC3(serv, pool, nrservs);
	return 0;
}