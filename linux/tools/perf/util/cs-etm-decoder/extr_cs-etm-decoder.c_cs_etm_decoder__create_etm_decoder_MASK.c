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
struct cs_etm_trace_params {int dummy; } ;
struct cs_etm_decoder_params {scalar_t__ operation; } ;
struct cs_etm_decoder {int dummy; } ;

/* Variables and functions */
 scalar_t__ CS_ETM_OPERATION_DECODE ; 
 scalar_t__ CS_ETM_OPERATION_PRINT ; 
 int FUNC0 (struct cs_etm_trace_params*,struct cs_etm_decoder*) ; 
 int FUNC1 (struct cs_etm_trace_params*,struct cs_etm_decoder*) ; 

__attribute__((used)) static int
FUNC2(struct cs_etm_decoder_params *d_params,
				   struct cs_etm_trace_params *t_params,
				   struct cs_etm_decoder *decoder)
{
	if (d_params->operation == CS_ETM_OPERATION_PRINT)
		return FUNC1(t_params,
								 decoder);
	else if (d_params->operation == CS_ETM_OPERATION_DECODE)
		return FUNC0(t_params,
								 decoder);

	return -1;
}