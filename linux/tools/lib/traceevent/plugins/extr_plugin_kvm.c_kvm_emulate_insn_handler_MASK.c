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
typedef  int /*<<< orphan*/  uint8_t ;
struct trace_seq {int dummy; } ;
struct tep_record {int dummy; } ;
struct tep_event {int dummy; } ;

/* Variables and functions */
 unsigned long long KVM_EMUL_INSN_F_CR0_PE ; 
 unsigned long long KVM_EMUL_INSN_F_CS_D ; 
 unsigned long long KVM_EMUL_INSN_F_CS_L ; 
 unsigned long long KVM_EMUL_INSN_F_EFL_VM ; 
 char* FUNC0 (int /*<<< orphan*/ *,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/ * FUNC1 (struct trace_seq*,struct tep_event*,char*,struct tep_record*,int*,int) ; 
 scalar_t__ FUNC2 (struct trace_seq*,struct tep_event*,char*,struct tep_record*,unsigned long long*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_seq*,char*,unsigned long long,unsigned long long,char const*,char*) ; 

__attribute__((used)) static int FUNC4(struct trace_seq *s,
				    struct tep_record *record,
				    struct tep_event *event, void *context)
{
	unsigned long long rip, csbase, len, flags, failed;
	int llen;
	uint8_t *insn;
	const char *disasm;

	if (FUNC2(s, event, "rip", record, &rip, 1) < 0)
		return -1;

	if (FUNC2(s, event, "csbase", record, &csbase, 1) < 0)
		return -1;

	if (FUNC2(s, event, "len", record, &len, 1) < 0)
		return -1;

	if (FUNC2(s, event, "flags", record, &flags, 1) < 0)
		return -1;

	if (FUNC2(s, event, "failed", record, &failed, 1) < 0)
		return -1;

	insn = FUNC1(s, event, "insn", record, &llen, 1);
	if (!insn)
		return -1;

	disasm = FUNC0(insn, len, rip,
			     flags & KVM_EMUL_INSN_F_CR0_PE,
			     flags & KVM_EMUL_INSN_F_EFL_VM,
			     flags & KVM_EMUL_INSN_F_CS_D,
			     flags & KVM_EMUL_INSN_F_CS_L);

	FUNC3(s, "%llx:%llx: %s%s", csbase, rip, disasm,
			 failed ? " FAIL" : "");
	return 0;
}