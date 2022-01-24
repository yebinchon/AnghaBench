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
struct bpf_insn_cbs {char const* (* cb_call ) (int /*<<< orphan*/ ,struct bpf_insn const*) ;int /*<<< orphan*/  private_data; } ;
struct bpf_insn {scalar_t__ src_reg; scalar_t__ imm; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const**) ; 
 scalar_t__ BPF_PSEUDO_CALL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ __BPF_FUNC_MAX_ID ; 
 char const** func_id_str ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t,char*,size_t) ; 
 char const* FUNC3 (int /*<<< orphan*/ ,struct bpf_insn const*) ; 

__attribute__((used)) static const char *FUNC4(const struct bpf_insn_cbs *cbs,
				   const struct bpf_insn *insn,
				   char *buff, size_t len)
{
	FUNC1(FUNC0(func_id_str) != __BPF_FUNC_MAX_ID);

	if (insn->src_reg != BPF_PSEUDO_CALL &&
	    insn->imm >= 0 && insn->imm < __BPF_FUNC_MAX_ID &&
	    func_id_str[insn->imm])
		return func_id_str[insn->imm];

	if (cbs && cbs->cb_call)
		return cbs->cb_call(cbs->private_data, insn);

	if (insn->src_reg == BPF_PSEUDO_CALL)
		FUNC2(buff, len, "%+d", insn->imm);

	return buff;
}