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
typedef  int u8 ;
struct bpf_reg_state {int dummy; } ;

/* Variables and functions */
#define  BPF_JEQ 129 
#define  BPF_JNE 128 
 int /*<<< orphan*/  FUNC0 (struct bpf_reg_state*,struct bpf_reg_state*) ; 

__attribute__((used)) static void FUNC1(struct bpf_reg_state *true_src,
				struct bpf_reg_state *true_dst,
				struct bpf_reg_state *false_src,
				struct bpf_reg_state *false_dst,
				u8 opcode)
{
	switch (opcode) {
	case BPF_JEQ:
		FUNC0(true_src, true_dst);
		break;
	case BPF_JNE:
		FUNC0(false_src, false_dst);
		break;
	}
}