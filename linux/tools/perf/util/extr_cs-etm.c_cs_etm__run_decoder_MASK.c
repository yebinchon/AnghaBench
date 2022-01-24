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
struct cs_etm_traceid_queue {int dummy; } ;
struct cs_etm_queue {scalar_t__ buf_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ETM_PER_THREAD_TRACEID ; 
 int EINVAL ; 
 int FUNC0 (struct cs_etm_queue*) ; 
 int FUNC1 (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ; 
 struct cs_etm_traceid_queue* FUNC2 (struct cs_etm_queue*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct cs_etm_queue*) ; 
 int FUNC4 (struct cs_etm_queue*,struct cs_etm_traceid_queue*) ; 

__attribute__((used)) static int FUNC5(struct cs_etm_queue *etmq)
{
	int err = 0;
	struct cs_etm_traceid_queue *tidq;

	tidq = FUNC2(etmq, CS_ETM_PER_THREAD_TRACEID);
	if (!tidq)
		return -EINVAL;

	/* Go through each buffer in the queue and decode them one by one */
	while (1) {
		err = FUNC3(etmq);
		if (err <= 0)
			return err;

		/* Run trace decoder until buffer consumed or end of trace */
		do {
			err = FUNC0(etmq);
			if (err)
				return err;

			/*
			 * Process each packet in this chunk, nothing to do if
			 * an error occurs other than hoping the next one will
			 * be better.
			 */
			err = FUNC4(etmq, tidq);

		} while (etmq->buf_len);

		if (err == 0)
			/* Flush any remaining branch stack entries */
			err = FUNC1(etmq, tidq);
	}

	return err;
}