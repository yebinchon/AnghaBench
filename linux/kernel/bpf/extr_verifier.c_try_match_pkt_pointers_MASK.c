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
struct bpf_verifier_state {int dummy; } ;
struct bpf_reg_state {int /*<<< orphan*/  type; } ;
struct bpf_insn {int /*<<< orphan*/  code; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  BPF_JGE 131 
#define  BPF_JGT 130 
#define  BPF_JLE 129 
#define  BPF_JLT 128 
 scalar_t__ BPF_JMP32 ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ BPF_X ; 
 int /*<<< orphan*/  PTR_TO_PACKET ; 
 int /*<<< orphan*/  PTR_TO_PACKET_END ; 
 int /*<<< orphan*/  PTR_TO_PACKET_META ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_verifier_state*,struct bpf_reg_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bpf_reg_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC5(const struct bpf_insn *insn,
				   struct bpf_reg_state *dst_reg,
				   struct bpf_reg_state *src_reg,
				   struct bpf_verifier_state *this_branch,
				   struct bpf_verifier_state *other_branch)
{
	if (FUNC2(insn->code) != BPF_X)
		return false;

	/* Pointers are always 64-bit. */
	if (FUNC0(insn->code) == BPF_JMP32)
		return false;

	switch (FUNC1(insn->code)) {
	case BPF_JGT:
		if ((dst_reg->type == PTR_TO_PACKET &&
		     src_reg->type == PTR_TO_PACKET_END) ||
		    (dst_reg->type == PTR_TO_PACKET_META &&
		     FUNC4(src_reg, PTR_TO_PACKET))) {
			/* pkt_data' > pkt_end, pkt_meta' > pkt_data */
			FUNC3(this_branch, dst_reg,
					       dst_reg->type, false);
		} else if ((dst_reg->type == PTR_TO_PACKET_END &&
			    src_reg->type == PTR_TO_PACKET) ||
			   (FUNC4(dst_reg, PTR_TO_PACKET) &&
			    src_reg->type == PTR_TO_PACKET_META)) {
			/* pkt_end > pkt_data', pkt_data > pkt_meta' */
			FUNC3(other_branch, src_reg,
					       src_reg->type, true);
		} else {
			return false;
		}
		break;
	case BPF_JLT:
		if ((dst_reg->type == PTR_TO_PACKET &&
		     src_reg->type == PTR_TO_PACKET_END) ||
		    (dst_reg->type == PTR_TO_PACKET_META &&
		     FUNC4(src_reg, PTR_TO_PACKET))) {
			/* pkt_data' < pkt_end, pkt_meta' < pkt_data */
			FUNC3(other_branch, dst_reg,
					       dst_reg->type, true);
		} else if ((dst_reg->type == PTR_TO_PACKET_END &&
			    src_reg->type == PTR_TO_PACKET) ||
			   (FUNC4(dst_reg, PTR_TO_PACKET) &&
			    src_reg->type == PTR_TO_PACKET_META)) {
			/* pkt_end < pkt_data', pkt_data > pkt_meta' */
			FUNC3(this_branch, src_reg,
					       src_reg->type, false);
		} else {
			return false;
		}
		break;
	case BPF_JGE:
		if ((dst_reg->type == PTR_TO_PACKET &&
		     src_reg->type == PTR_TO_PACKET_END) ||
		    (dst_reg->type == PTR_TO_PACKET_META &&
		     FUNC4(src_reg, PTR_TO_PACKET))) {
			/* pkt_data' >= pkt_end, pkt_meta' >= pkt_data */
			FUNC3(this_branch, dst_reg,
					       dst_reg->type, true);
		} else if ((dst_reg->type == PTR_TO_PACKET_END &&
			    src_reg->type == PTR_TO_PACKET) ||
			   (FUNC4(dst_reg, PTR_TO_PACKET) &&
			    src_reg->type == PTR_TO_PACKET_META)) {
			/* pkt_end >= pkt_data', pkt_data >= pkt_meta' */
			FUNC3(other_branch, src_reg,
					       src_reg->type, false);
		} else {
			return false;
		}
		break;
	case BPF_JLE:
		if ((dst_reg->type == PTR_TO_PACKET &&
		     src_reg->type == PTR_TO_PACKET_END) ||
		    (dst_reg->type == PTR_TO_PACKET_META &&
		     FUNC4(src_reg, PTR_TO_PACKET))) {
			/* pkt_data' <= pkt_end, pkt_meta' <= pkt_data */
			FUNC3(other_branch, dst_reg,
					       dst_reg->type, false);
		} else if ((dst_reg->type == PTR_TO_PACKET_END &&
			    src_reg->type == PTR_TO_PACKET) ||
			   (FUNC4(dst_reg, PTR_TO_PACKET) &&
			    src_reg->type == PTR_TO_PACKET_META)) {
			/* pkt_end <= pkt_data', pkt_data <= pkt_meta' */
			FUNC3(this_branch, src_reg,
					       src_reg->type, true);
		} else {
			return false;
		}
		break;
	default:
		return false;
	}

	return true;
}