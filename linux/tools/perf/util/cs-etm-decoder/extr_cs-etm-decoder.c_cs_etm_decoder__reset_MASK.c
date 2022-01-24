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
struct cs_etm_decoder {int /*<<< orphan*/  dcd_tree; int /*<<< orphan*/  prev_return; } ;
typedef  int /*<<< orphan*/  ocsd_datapath_resp_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCSD_OP_RESET ; 
 int /*<<< orphan*/  OCSD_RESP_CONT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(struct cs_etm_decoder *decoder)
{
	ocsd_datapath_resp_t dp_ret;

	decoder->prev_return = OCSD_RESP_CONT;

	dp_ret = FUNC1(decoder->dcd_tree, OCSD_OP_RESET,
				      0, 0, NULL, NULL);
	if (FUNC0(dp_ret))
		return -1;

	return 0;
}