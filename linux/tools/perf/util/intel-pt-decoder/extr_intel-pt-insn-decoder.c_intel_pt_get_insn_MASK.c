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
struct intel_pt_insn {int /*<<< orphan*/  buf; } ;
struct insn {size_t length; } ;

/* Variables and functions */
 size_t INTEL_PT_INSN_BUF_SZ ; 
 int /*<<< orphan*/  FUNC0 (struct insn*) ; 
 int /*<<< orphan*/  FUNC1 (struct insn*) ; 
 int /*<<< orphan*/  FUNC2 (struct insn*,unsigned char const*,size_t,int) ; 
 int /*<<< orphan*/  FUNC3 (struct insn*,struct intel_pt_insn*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned char const*,size_t) ; 

int FUNC5(const unsigned char *buf, size_t len, int x86_64,
		      struct intel_pt_insn *intel_pt_insn)
{
	struct insn insn;

	FUNC2(&insn, buf, len, x86_64);
	FUNC1(&insn);
	if (!FUNC0(&insn) || insn.length > len)
		return -1;
	FUNC3(&insn, intel_pt_insn);
	if (insn.length < INTEL_PT_INSN_BUF_SZ)
		FUNC4(intel_pt_insn->buf, buf, insn.length);
	else
		FUNC4(intel_pt_insn->buf, buf, INTEL_PT_INSN_BUF_SZ);
	return 0;
}