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
struct bpf_insn_pos {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_FUNC_probe_read ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_JNE ; 
 int /*<<< orphan*/  BPF_MOV ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int BPF_REG_ARG1 ; 
 int BPF_REG_ARG2 ; 
 int BPF_REG_ARG3 ; 
 long BPF_REG_SIZE ; 
 int /*<<< orphan*/  JMP_TO_ERROR_CODE ; 
 int FUNC4 (struct bpf_insn_pos*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct bpf_insn_pos*) ; 

__attribute__((used)) static int
FUNC6(struct bpf_insn_pos *pos,
	     int src_base_addr_reg,
	     int dst_addr_reg,
	     long offset)
{
	/* mov arg3, src_base_addr_reg */
	if (src_base_addr_reg != BPF_REG_ARG3)
		FUNC5(FUNC3(BPF_REG_ARG3, src_base_addr_reg), pos);
	/* add arg3, #offset */
	if (offset)
		FUNC5(FUNC0(BPF_ADD, BPF_REG_ARG3, offset), pos);

	/* mov arg2, #reg_size */
	FUNC5(FUNC0(BPF_MOV, BPF_REG_ARG2, BPF_REG_SIZE), pos);

	/* mov arg1, dst_addr_reg */
	if (dst_addr_reg != BPF_REG_ARG1)
		FUNC5(FUNC3(BPF_REG_ARG1, dst_addr_reg), pos);

	/* Call probe_read  */
	FUNC5(FUNC1(BPF_FUNC_probe_read), pos);
	/*
	 * Error processing: if read fail, goto error code,
	 * will be relocated. Target should be the start of
	 * error processing code.
	 */
	FUNC5(FUNC2(BPF_JNE, BPF_REG_0, 0, JMP_TO_ERROR_CODE),
	    pos);

	return FUNC4(pos);
}