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
struct sockaddr_in6 {int /*<<< orphan*/  sin6_port; } ;
struct bpf_tcp_sock {int dummy; } ;
struct bpf_spinlock_cnt {int cnt; int /*<<< orphan*/  lock; } ;
struct bpf_sock {int state; scalar_t__ family; scalar_t__ protocol; scalar_t__ src_port; int /*<<< orphan*/  src_ip6; } ;
struct __sk_buff {struct bpf_sock* sk; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ ADDR_CLI_IDX ; 
 scalar_t__ ADDR_SRV_IDX ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  BPF_SK_STORAGE_GET_F_CREATE ; 
 scalar_t__ EGRESS_CLI_IDX ; 
 scalar_t__ EGRESS_LINUM_IDX ; 
 scalar_t__ EGRESS_SRV_IDX ; 
 scalar_t__ IPPROTO_TCP ; 
 int /*<<< orphan*/  RETURN ; 
 int /*<<< orphan*/  addr_map ; 
 void* FUNC0 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 struct bpf_sock* FUNC2 (struct bpf_sock*) ; 
 struct bpf_spinlock_cnt* FUNC3 (int /*<<< orphan*/ *,struct bpf_sock*,struct bpf_spinlock_cnt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct bpf_tcp_sock* FUNC6 (struct bpf_sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sk_pkt_out_cnt ; 
 int /*<<< orphan*/  sk_pkt_out_cnt10 ; 
 int /*<<< orphan*/  FUNC8 (struct bpf_sock*,struct bpf_sock*) ; 
 int /*<<< orphan*/  sock_result_map ; 
 int /*<<< orphan*/  tcp_sock_result_map ; 
 int /*<<< orphan*/  FUNC9 (struct bpf_tcp_sock*,struct bpf_tcp_sock*) ; 

int FUNC10(struct __sk_buff *skb)
{
	struct bpf_spinlock_cnt cli_cnt_init = { .lock = 0, .cnt = 0xeB9F };
	__u32 srv_idx = ADDR_SRV_IDX, cli_idx = ADDR_CLI_IDX, result_idx;
	struct bpf_spinlock_cnt *pkt_out_cnt, *pkt_out_cnt10;
	struct sockaddr_in6 *srv_sa6, *cli_sa6;
	struct bpf_tcp_sock *tp, *tp_ret;
	struct bpf_sock *sk, *sk_ret;
	__u32 linum, linum_idx;

	linum_idx = EGRESS_LINUM_IDX;

	sk = skb->sk;
	if (!sk || sk->state == 10)
		RETURN;

	sk = FUNC2(sk);
	if (!sk || sk->family != AF_INET6 || sk->protocol != IPPROTO_TCP ||
	    !FUNC7(sk->src_ip6))
		RETURN;

	tp = FUNC6(sk);
	if (!tp)
		RETURN;

	srv_sa6 = FUNC0(&addr_map, &srv_idx);
	cli_sa6 = FUNC0(&addr_map, &cli_idx);
	if (!srv_sa6 || !cli_sa6)
		RETURN;

	if (sk->src_port == FUNC1(srv_sa6->sin6_port))
		result_idx = EGRESS_SRV_IDX;
	else if (sk->src_port == FUNC1(cli_sa6->sin6_port))
		result_idx = EGRESS_CLI_IDX;
	else
		RETURN;

	sk_ret = FUNC0(&sock_result_map, &result_idx);
	tp_ret = FUNC0(&tcp_sock_result_map, &result_idx);
	if (!sk_ret || !tp_ret)
		RETURN;

	FUNC8(sk_ret, sk);
	FUNC9(tp_ret, tp);

	if (result_idx == EGRESS_SRV_IDX) {
		/* The userspace has created it for srv sk */
		pkt_out_cnt = FUNC3(&sk_pkt_out_cnt, sk, 0, 0);
		pkt_out_cnt10 = FUNC3(&sk_pkt_out_cnt10, sk,
						   0, 0);
	} else {
		pkt_out_cnt = FUNC3(&sk_pkt_out_cnt, sk,
						 &cli_cnt_init,
						 BPF_SK_STORAGE_GET_F_CREATE);
		pkt_out_cnt10 = FUNC3(&sk_pkt_out_cnt10,
						   sk, &cli_cnt_init,
						   BPF_SK_STORAGE_GET_F_CREATE);
	}

	if (!pkt_out_cnt || !pkt_out_cnt10)
		RETURN;

	/* Even both cnt and cnt10 have lock defined in their BTF,
	 * intentionally one cnt takes lock while one does not
	 * as a test for the spinlock support in BPF_MAP_TYPE_SK_STORAGE.
	 */
	pkt_out_cnt->cnt += 1;
	FUNC4(&pkt_out_cnt10->lock);
	pkt_out_cnt10->cnt += 10;
	FUNC5(&pkt_out_cnt10->lock);

	RETURN;
}