#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {struct task_struct* rq_task; } ;
struct svc_serv {int sv_nrthreads; int sv_nrpools; TYPE_1__* sv_ops; int /*<<< orphan*/  sv_name; } ;
struct svc_rqst {struct svc_rqst* rq_task; } ;
struct svc_pool {int /*<<< orphan*/  sp_id; } ;
struct TYPE_2__ {int /*<<< orphan*/  svo_module; int /*<<< orphan*/  svo_function; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct svc_pool* FUNC3 (struct svc_serv*,struct svc_pool*,unsigned int*) ; 
 struct task_struct* FUNC4 (int /*<<< orphan*/ ,struct task_struct*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct task_struct*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC9 (struct svc_serv*,struct svc_pool*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct svc_serv*) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*) ; 

__attribute__((used)) static int
FUNC12(struct svc_serv *serv, struct svc_pool *pool, int nrservs)
{
	struct svc_rqst	*rqstp;
	struct task_struct *task;
	struct svc_pool *chosen_pool;
	unsigned int state = serv->sv_nrthreads-1;
	int node;

	do {
		nrservs--;
		chosen_pool = FUNC3(serv, pool, &state);

		node = FUNC7(chosen_pool->sp_id);
		rqstp = FUNC9(serv, chosen_pool, node);
		if (FUNC0(rqstp))
			return FUNC1(rqstp);

		FUNC2(serv->sv_ops->svo_module);
		task = FUNC4(serv->sv_ops->svo_function, rqstp,
					      node, "%s", serv->sv_name);
		if (FUNC0(task)) {
			FUNC5(serv->sv_ops->svo_module);
			FUNC6(rqstp);
			return FUNC1(task);
		}

		rqstp->rq_task = task;
		if (serv->sv_nrpools > 1)
			FUNC8(task, chosen_pool->sp_id);

		FUNC10(serv);
		FUNC11(task);
	} while (nrservs > 0);

	return 0;
}