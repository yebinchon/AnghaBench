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
typedef  int /*<<< orphan*/  uint64_t ;
struct intel_pt_insn {scalar_t__ branch; } ;
struct intel_pt_decoder {int set_fup_tx_flags; void* pkt_state; int /*<<< orphan*/  ip; int /*<<< orphan*/  last_ip; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOENT ; 
 scalar_t__ INTEL_PT_BR_CONDITIONAL ; 
 scalar_t__ INTEL_PT_BR_INDIRECT ; 
 int INTEL_PT_RETURN ; 
 void* INTEL_PT_STATE_ERR_RESYNC ; 
 int /*<<< orphan*/  FUNC0 (struct intel_pt_decoder*) ; 
 scalar_t__ FUNC1 (struct intel_pt_decoder*) ; 
 scalar_t__ FUNC2 (struct intel_pt_decoder*,struct intel_pt_insn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct intel_pt_decoder*,struct intel_pt_insn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct intel_pt_decoder *decoder)
{
	struct intel_pt_insn intel_pt_insn;
	uint64_t ip;
	int err;

	ip = decoder->last_ip;

	while (1) {
		err = FUNC4(decoder, &intel_pt_insn, ip);
		if (err == INTEL_PT_RETURN)
			return 0;
		if (err == -EAGAIN ||
		    FUNC2(decoder, &intel_pt_insn, ip, err)) {
			if (FUNC1(decoder))
				return 0;
			return -EAGAIN;
		}
		decoder->set_fup_tx_flags = false;
		if (err)
			return err;

		if (intel_pt_insn.branch == INTEL_PT_BR_INDIRECT) {
			FUNC3("ERROR: Unexpected indirect branch",
					decoder->ip);
			decoder->pkt_state = INTEL_PT_STATE_ERR_RESYNC;
			return -ENOENT;
		}

		if (intel_pt_insn.branch == INTEL_PT_BR_CONDITIONAL) {
			FUNC3("ERROR: Unexpected conditional branch",
					decoder->ip);
			decoder->pkt_state = INTEL_PT_STATE_ERR_RESYNC;
			return -ENOENT;
		}

		FUNC0(decoder);
	}
}