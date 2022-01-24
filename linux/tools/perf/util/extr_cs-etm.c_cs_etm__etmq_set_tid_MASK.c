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
typedef  int /*<<< orphan*/  u8 ;
struct cs_etm_traceid_queue {int /*<<< orphan*/  thread; int /*<<< orphan*/  tid; } ;
struct cs_etm_queue {struct cs_etm_auxtrace* etm; } ;
struct cs_etm_auxtrace {int /*<<< orphan*/  machine; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 int EINVAL ; 
 struct cs_etm_traceid_queue* FUNC0 (struct cs_etm_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct cs_etm_auxtrace*,struct cs_etm_traceid_queue*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(struct cs_etm_queue *etmq,
			 pid_t tid, u8 trace_chan_id)
{
	int cpu, err = -EINVAL;
	struct cs_etm_auxtrace *etm = etmq->etm;
	struct cs_etm_traceid_queue *tidq;

	tidq = FUNC0(etmq, trace_chan_id);
	if (!tidq)
		return err;

	if (FUNC1(trace_chan_id, &cpu) < 0)
		return err;

	err = FUNC3(etm->machine, cpu, tid, tid);
	if (err)
		return err;

	tidq->tid = tid;
	FUNC4(tidq->thread);

	FUNC2(etm, tidq);
	return 0;
}