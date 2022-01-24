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
struct bpf_test {unsigned int prog_len; struct bpf_insn* fill_insns; } ;
struct bpf_insn {int dummy; } ;

/* Variables and functions */
 struct bpf_insn FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BPF_B ; 
 int BPF_CALL ; 
 struct bpf_insn FUNC1 () ; 
 int /*<<< orphan*/  BPF_FUNC_skb_vlan_pop ; 
 int /*<<< orphan*/  BPF_FUNC_skb_vlan_push ; 
 int BPF_JMP ; 
 struct bpf_insn FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int) ; 
 struct bpf_insn FUNC3 (int) ; 
 struct bpf_insn FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  BPF_JNE ; 
 struct bpf_insn FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_MOV ; 
 struct bpf_insn FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC7 (int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int /*<<< orphan*/  BPF_REG_1 ; 
 int /*<<< orphan*/  BPF_REG_2 ; 
 int /*<<< orphan*/  BPF_REG_3 ; 
 int /*<<< orphan*/  BPF_REG_6 ; 
 int PUSH_CNT ; 

__attribute__((used)) static void FUNC10(struct bpf_test *self)
{
	/* test: {skb->data[0], vlan_push} x 51 + {skb->data[0], vlan_pop} x 51 */
#define PUSH_CNT 51
	/* jump range is limited to 16 bit. PUSH_CNT of ld_abs needs room */
	unsigned int len = (1 << 15) - PUSH_CNT * 2 * 5 * 6;
	struct bpf_insn *insn = self->fill_insns;
	int i = 0, j, k = 0;

	insn[i++] = FUNC8(BPF_REG_6, BPF_REG_1);
loop:
	for (j = 0; j < PUSH_CNT; j++) {
		insn[i++] = FUNC5(BPF_B, 0);
		/* jump to error label */
		insn[i] = FUNC2(BPF_JNE, BPF_REG_0, 0x34, len - i - 3);
		i++;
		insn[i++] = FUNC8(BPF_REG_1, BPF_REG_6);
		insn[i++] = FUNC7(BPF_REG_2, 1);
		insn[i++] = FUNC7(BPF_REG_3, 2);
		insn[i++] = FUNC9(BPF_JMP | BPF_CALL, 0, 0, 0,
					 BPF_FUNC_skb_vlan_push),
		insn[i] = FUNC4(BPF_JNE, BPF_REG_0, 0, len - i - 3);
		i++;
	}

	for (j = 0; j < PUSH_CNT; j++) {
		insn[i++] = FUNC5(BPF_B, 0);
		insn[i] = FUNC2(BPF_JNE, BPF_REG_0, 0x34, len - i - 3);
		i++;
		insn[i++] = FUNC8(BPF_REG_1, BPF_REG_6);
		insn[i++] = FUNC9(BPF_JMP | BPF_CALL, 0, 0, 0,
					 BPF_FUNC_skb_vlan_pop),
		insn[i] = FUNC4(BPF_JNE, BPF_REG_0, 0, len - i - 3);
		i++;
	}
	if (++k < 5)
		goto loop;

	for (; i < len - 3; i++)
		insn[i] = FUNC0(BPF_MOV, BPF_REG_0, 0xbef);
	insn[len - 3] = FUNC3(1);
	/* error label */
	insn[len - 2] = FUNC6(BPF_REG_0, 0);
	insn[len - 1] = FUNC1();
	self->prog_len = len;
}