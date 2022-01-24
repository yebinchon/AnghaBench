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
typedef  int /*<<< orphan*/  u32 ;
struct cs_etm_trace_params {int dummy; } ;
struct cs_etm_decoder_params {scalar_t__ frame_aligned; scalar_t__ hsyncs; scalar_t__ fsyncs; scalar_t__ formatted; int /*<<< orphan*/  data; } ;
struct cs_etm_decoder {scalar_t__ dcd_tree; int /*<<< orphan*/  prev_return; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  ocsd_dcd_tree_src_t ;

/* Variables and functions */
 int /*<<< orphan*/  OCSD_DFRMTR_FRAME_MEM_ALIGN ; 
 int /*<<< orphan*/  OCSD_DFRMTR_HAS_FSYNCS ; 
 int /*<<< orphan*/  OCSD_DFRMTR_HAS_HSYNCS ; 
 int /*<<< orphan*/  OCSD_DFRMTR_RESET_ON_4X_FSYNC ; 
 int /*<<< orphan*/  OCSD_RESP_CONT ; 
 int /*<<< orphan*/  OCSD_TRC_SRC_FRAME_FORMATTED ; 
 int /*<<< orphan*/  OCSD_TRC_SRC_SINGLE ; 
 int FUNC0 (struct cs_etm_decoder_params*,struct cs_etm_trace_params*,struct cs_etm_decoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct cs_etm_decoder*) ; 
 int FUNC2 (struct cs_etm_decoder_params*,struct cs_etm_decoder*) ; 
 int /*<<< orphan*/  FUNC3 (struct cs_etm_decoder_params*,struct cs_etm_decoder*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cs_etm_decoder* FUNC5 (int) ; 

struct cs_etm_decoder *
FUNC6(int num_cpu, struct cs_etm_decoder_params *d_params,
		    struct cs_etm_trace_params t_params[])
{
	struct cs_etm_decoder *decoder;
	ocsd_dcd_tree_src_t format;
	u32 flags;
	int i, ret;

	if ((!t_params) || (!d_params))
		return NULL;

	decoder = FUNC5(sizeof(*decoder));

	if (!decoder)
		return NULL;

	decoder->data = d_params->data;
	decoder->prev_return = OCSD_RESP_CONT;
	format = (d_params->formatted ? OCSD_TRC_SRC_FRAME_FORMATTED :
					 OCSD_TRC_SRC_SINGLE);
	flags = 0;
	flags |= (d_params->fsyncs ? OCSD_DFRMTR_HAS_FSYNCS : 0);
	flags |= (d_params->hsyncs ? OCSD_DFRMTR_HAS_HSYNCS : 0);
	flags |= (d_params->frame_aligned ? OCSD_DFRMTR_FRAME_MEM_ALIGN : 0);

	/*
	 * Drivers may add barrier frames when used with perf, set up to
	 * handle this. Barriers const of FSYNC packet repeated 4 times.
	 */
	flags |= OCSD_DFRMTR_RESET_ON_4X_FSYNC;

	/* Create decode tree for the data source */
	decoder->dcd_tree = FUNC4(format, flags);

	if (decoder->dcd_tree == 0)
		goto err_free_decoder;

	/* init library print logging support */
	ret = FUNC2(d_params, decoder);
	if (ret != 0)
		goto err_free_decoder;

	/* init raw frame logging if required */
	FUNC3(d_params, decoder);

	for (i = 0; i < num_cpu; i++) {
		ret = FUNC0(d_params,
							 &t_params[i],
							 decoder);
		if (ret != 0)
			goto err_free_decoder;
	}

	return decoder;

err_free_decoder:
	FUNC1(decoder);
	return NULL;
}