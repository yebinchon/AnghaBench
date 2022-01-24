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
struct cs_etm_trace_params {int dummy; } ;
struct cs_etm_decoder_params {int dummy; } ;
struct cs_etm_decoder {int dummy; } ;
struct cs_etm_auxtrace {int num_cpu; } ;
struct auxtrace_buffer {size_t size; scalar_t__ data; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  CS_ETM_OPERATION_PRINT ; 
 char* PERF_COLOR_BLUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,char*,size_t) ; 
 scalar_t__ FUNC1 (struct cs_etm_decoder_params*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct cs_etm_trace_params*,struct cs_etm_auxtrace*) ; 
 int /*<<< orphan*/  FUNC3 (struct cs_etm_decoder*) ; 
 struct cs_etm_decoder* FUNC4 (int,struct cs_etm_decoder_params*,struct cs_etm_trace_params*) ; 
 int FUNC5 (struct cs_etm_decoder*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stdout ; 
 struct cs_etm_trace_params* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct cs_etm_trace_params**) ; 

__attribute__((used)) static void FUNC9(struct cs_etm_auxtrace *etm,
			       struct auxtrace_buffer *buffer)
{
	int ret;
	const char *color = PERF_COLOR_BLUE;
	struct cs_etm_decoder_params d_params;
	struct cs_etm_trace_params *t_params;
	struct cs_etm_decoder *decoder;
	size_t buffer_used = 0;

	FUNC6(stdout, "\n");
	FUNC0(stdout, color,
		     ". ... CoreSight ETM Trace data: size %zu bytes\n",
		     buffer->size);

	/* Use metadata to fill in trace parameters for trace decoder */
	t_params = FUNC7(sizeof(*t_params) * etm->num_cpu);

	if (!t_params)
		return;

	if (FUNC2(t_params, etm))
		goto out_free;

	/* Set decoder parameters to simply print the trace packets */
	if (FUNC1(&d_params, NULL,
					CS_ETM_OPERATION_PRINT))
		goto out_free;

	decoder = FUNC4(etm->num_cpu, &d_params, t_params);

	if (!decoder)
		goto out_free;
	do {
		size_t consumed;

		ret = FUNC5(
				decoder, buffer->offset,
				&((u8 *)buffer->data)[buffer_used],
				buffer->size - buffer_used, &consumed);
		if (ret)
			break;

		buffer_used += consumed;
	} while (buffer_used < buffer->size);

	FUNC3(decoder);

out_free:
	FUNC8(&t_params);
}