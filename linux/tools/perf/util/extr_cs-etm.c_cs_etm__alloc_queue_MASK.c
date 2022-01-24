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
typedef  int /*<<< orphan*/  u64 ;
struct cs_etm_trace_params {int dummy; } ;
struct cs_etm_queue {int /*<<< orphan*/  traceid_queues_list; int /*<<< orphan*/  decoder; } ;
struct cs_etm_decoder_params {int dummy; } ;
struct cs_etm_auxtrace {int num_cpu; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ETM_OPERATION_DECODE ; 
 scalar_t__ FUNC0 (struct cs_etm_decoder_params*,struct cs_etm_queue*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct cs_etm_trace_params*,struct cs_etm_auxtrace*) ; 
 int /*<<< orphan*/  cs_etm__mem_access ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,struct cs_etm_decoder_params*,struct cs_etm_trace_params*) ; 
 int /*<<< orphan*/  FUNC5 (struct cs_etm_queue*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct cs_etm_trace_params**) ; 

__attribute__((used)) static struct cs_etm_queue *FUNC10(struct cs_etm_auxtrace *etm)
{
	struct cs_etm_decoder_params d_params;
	struct cs_etm_trace_params  *t_params = NULL;
	struct cs_etm_queue *etmq;

	etmq = FUNC8(sizeof(*etmq));
	if (!etmq)
		return NULL;

	etmq->traceid_queues_list = FUNC7(NULL);
	if (!etmq->traceid_queues_list)
		goto out_free;

	/* Use metadata to fill in trace parameters for trace decoder */
	t_params = FUNC8(sizeof(*t_params) * etm->num_cpu);

	if (!t_params)
		goto out_free;

	if (FUNC1(t_params, etm))
		goto out_free;

	/* Set decoder parameters to decode trace packets */
	if (FUNC0(&d_params, etmq,
					CS_ETM_OPERATION_DECODE))
		goto out_free;

	etmq->decoder = FUNC4(etm->num_cpu, &d_params, t_params);

	if (!etmq->decoder)
		goto out_free;

	/*
	 * Register a function to handle all memory accesses required by
	 * the trace decoder library.
	 */
	if (FUNC2(etmq->decoder,
					      0x0L, ((u64) -1L),
					      cs_etm__mem_access))
		goto out_free_decoder;

	FUNC9(&t_params);
	return etmq;

out_free_decoder:
	FUNC3(etmq->decoder);
out_free:
	FUNC6(etmq->traceid_queues_list);
	FUNC5(etmq);

	return NULL;
}