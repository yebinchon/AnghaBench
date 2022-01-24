#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  cbcpu; } ;
struct parallel_data {int /*<<< orphan*/  pqueue; int /*<<< orphan*/  seq_nr; int /*<<< orphan*/  refcnt; TYPE_1__ cpumask; } ;
struct padata_priv {int cb_cpu; int cpu; int /*<<< orphan*/  list; int /*<<< orphan*/  seq_nr; struct parallel_data* pd; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct padata_parallel_queue {int /*<<< orphan*/  work; TYPE_2__ parallel; } ;
struct padata_instance {int flags; int /*<<< orphan*/  parallel_wq; int /*<<< orphan*/  pd; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 scalar_t__ MAX_OBJ_NUM ; 
 int PADATA_INIT ; 
 int PADATA_INVALID ; 
 int PADATA_RESET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct parallel_data*,int /*<<< orphan*/ ) ; 
 struct padata_parallel_queue* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct parallel_data* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int FUNC16(struct padata_instance *pinst,
		       struct padata_priv *padata, int *cb_cpu)
{
	int i, cpu, cpu_index, target_cpu, err;
	struct padata_parallel_queue *queue;
	struct parallel_data *pd;

	FUNC12();

	pd = FUNC11(pinst->pd);

	err = -EINVAL;
	if (!(pinst->flags & PADATA_INIT) || pinst->flags & PADATA_INVALID)
		goto out;

	if (!FUNC5(*cb_cpu, pd->cpumask.cbcpu)) {
		if (!FUNC6(pd->cpumask.cbcpu))
			goto out;

		/* Select an alternate fallback CPU and notify the caller. */
		cpu_index = *cb_cpu % FUNC6(pd->cpumask.cbcpu);

		cpu = FUNC3(pd->cpumask.cbcpu);
		for (i = 0; i < cpu_index; i++)
			cpu = FUNC4(cpu, pd->cpumask.cbcpu);

		*cb_cpu = cpu;
	}

	err =  -EBUSY;
	if ((pinst->flags & PADATA_RESET))
		goto out;

	if (FUNC2(&pd->refcnt) >= MAX_OBJ_NUM)
		goto out;

	err = 0;
	FUNC0(&pd->refcnt);
	padata->pd = pd;
	padata->cb_cpu = *cb_cpu;

	padata->seq_nr = FUNC1(&pd->seq_nr);
	target_cpu = FUNC8(pd, padata->seq_nr);
	padata->cpu = target_cpu;
	queue = FUNC9(pd->pqueue, target_cpu);

	FUNC14(&queue->parallel.lock);
	FUNC7(&padata->list, &queue->parallel.list);
	FUNC15(&queue->parallel.lock);

	FUNC10(pinst->parallel_wq, &queue->work);

out:
	FUNC13();

	return err;
}