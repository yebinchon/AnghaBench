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
struct intel_pt_insn {int branch; int /*<<< orphan*/  op; int /*<<< orphan*/  rel; } ;

/* Variables and functions */
#define  INTEL_PT_BR_CONDITIONAL 131 
#define  INTEL_PT_BR_INDIRECT 130 
#define  INTEL_PT_BR_NO_BRANCH 129 
#define  INTEL_PT_BR_UNCONDITIONAL 128 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char*,size_t,char*,char*,...) ; 

int FUNC2(const struct intel_pt_insn *intel_pt_insn, char *buf,
		       size_t buf_len)
{
	switch (intel_pt_insn->branch) {
	case INTEL_PT_BR_CONDITIONAL:
	case INTEL_PT_BR_UNCONDITIONAL:
		return FUNC1(buf, buf_len, "%s %s%d",
				FUNC0(intel_pt_insn->op),
				intel_pt_insn->rel > 0 ? "+" : "",
				intel_pt_insn->rel);
	case INTEL_PT_BR_NO_BRANCH:
	case INTEL_PT_BR_INDIRECT:
		return FUNC1(buf, buf_len, "%s",
				FUNC0(intel_pt_insn->op));
	default:
		break;
	}
	return 0;
}