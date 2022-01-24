#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  xdp_flags; } ;
struct xsk_socket {int prog_fd; TYPE_1__ config; int /*<<< orphan*/  ifindex; int /*<<< orphan*/  xsks_map_fd; } ;
struct bpf_insn {int dummy; } ;
typedef  int /*<<< orphan*/  prog ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_ADD ; 
 struct bpf_insn FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC1 (int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC2 () ; 
 int /*<<< orphan*/  BPF_FUNC_map_lookup_elem ; 
 int /*<<< orphan*/  BPF_FUNC_redirect_map ; 
 int /*<<< orphan*/  BPF_JEQ ; 
 struct bpf_insn FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bpf_insn FUNC6 (int /*<<< orphan*/ ,int) ; 
 struct bpf_insn FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BPF_PROG_TYPE_XDP ; 
 int /*<<< orphan*/  BPF_REG_0 ; 
 int /*<<< orphan*/  BPF_REG_1 ; 
 int /*<<< orphan*/  BPF_REG_10 ; 
 int /*<<< orphan*/  BPF_REG_2 ; 
 int /*<<< orphan*/  BPF_REG_3 ; 
 struct bpf_insn FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  BPF_W ; 
 int FUNC9 (int /*<<< orphan*/ ,struct bpf_insn*,size_t,char*,int /*<<< orphan*/ ,char*,int const) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 

__attribute__((used)) static int FUNC13(struct xsk_socket *xsk)
{
	static const int log_buf_size = 16 * 1024;
	char log_buf[log_buf_size];
	int err, prog_fd;

	/* This is the C-program:
	 * SEC("xdp_sock") int xdp_sock_prog(struct xdp_md *ctx)
	 * {
	 *     int index = ctx->rx_queue_index;
	 *
	 *     // A set entry here means that the correspnding queue_id
	 *     // has an active AF_XDP socket bound to it.
	 *     if (bpf_map_lookup_elem(&xsks_map, &index))
	 *         return bpf_redirect_map(&xsks_map, index, 0);
	 *
	 *     return XDP_PASS;
	 * }
	 */
	struct bpf_insn prog[] = {
		/* r1 = *(u32 *)(r1 + 16) */
		FUNC4(BPF_W, BPF_REG_1, BPF_REG_1, 16),
		/* *(u32 *)(r10 - 4) = r1 */
		FUNC8(BPF_W, BPF_REG_10, BPF_REG_1, -4),
		FUNC7(BPF_REG_2, BPF_REG_10),
		FUNC0(BPF_ADD, BPF_REG_2, -4),
		FUNC5(BPF_REG_1, xsk->xsks_map_fd),
		FUNC1(BPF_FUNC_map_lookup_elem),
		FUNC7(BPF_REG_1, BPF_REG_0),
		FUNC6(BPF_REG_0, 2),
		/* if r1 == 0 goto +5 */
		FUNC3(BPF_JEQ, BPF_REG_1, 0, 5),
		/* r2 = *(u32 *)(r10 - 4) */
		FUNC5(BPF_REG_1, xsk->xsks_map_fd),
		FUNC4(BPF_W, BPF_REG_2, BPF_REG_10, -4),
		FUNC6(BPF_REG_3, 0),
		FUNC1(BPF_FUNC_redirect_map),
		/* The jumps are to this instruction */
		FUNC2(),
	};
	size_t insns_cnt = sizeof(prog) / sizeof(struct bpf_insn);

	prog_fd = FUNC9(BPF_PROG_TYPE_XDP, prog, insns_cnt,
				   "LGPL-2.1 or BSD-2-Clause", 0, log_buf,
				   log_buf_size);
	if (prog_fd < 0) {
		FUNC12("BPF log buffer:\n%s", log_buf);
		return prog_fd;
	}

	err = FUNC10(xsk->ifindex, prog_fd, xsk->config.xdp_flags);
	if (err) {
		FUNC11(prog_fd);
		return err;
	}

	xsk->prog_fd = prog_fd;
	return 0;
}