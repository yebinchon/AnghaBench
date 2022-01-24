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
struct intel_pt_decoder {int have_tma; int pkt_len; int pkt_step; scalar_t__ pkt_state; } ;

/* Variables and functions */
 int EBADMSG ; 
 scalar_t__ INTEL_PT_STATE_ERR1 ; 
 scalar_t__ INTEL_PT_STATE_NO_PSB ; 
 int /*<<< orphan*/  FUNC0 (struct intel_pt_decoder*) ; 
 int /*<<< orphan*/  FUNC1 (struct intel_pt_decoder*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(struct intel_pt_decoder *decoder)
{
	FUNC0(decoder);
	decoder->have_tma = false;
	decoder->pkt_len = 1;
	decoder->pkt_step = 1;
	FUNC1(decoder);
	if (decoder->pkt_state != INTEL_PT_STATE_NO_PSB) {
		FUNC2("ERROR: Bad packet\n");
		decoder->pkt_state = INTEL_PT_STATE_ERR1;
	}
	return -EBADMSG;
}