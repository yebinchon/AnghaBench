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
struct intel_pt_insn {int dummy; } ;

/* Variables and functions */
 int INTEL_PT_INSN_DESC_MAX ; 
 int /*<<< orphan*/  f ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (struct intel_pt_insn*,char*,int) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

void FUNC4(struct intel_pt_insn *intel_pt_insn,
				 uint64_t ip)
{
	char desc[INTEL_PT_INSN_DESC_MAX];

	if (FUNC2())
		return;

	FUNC3(ip, 8);
	if (FUNC1(intel_pt_insn, desc, INTEL_PT_INSN_DESC_MAX) > 0)
		FUNC0(f, "%s\n", desc);
	else
		FUNC0(f, "Bad instruction!\n");
}