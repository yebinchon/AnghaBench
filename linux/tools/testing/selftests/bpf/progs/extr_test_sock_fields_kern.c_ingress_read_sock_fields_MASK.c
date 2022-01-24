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
struct bpf_sock {scalar_t__ family; scalar_t__ src_port; int state; int /*<<< orphan*/  src_ip6; } ;
struct __sk_buff {struct bpf_sock* sk; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_SRV_IDX ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  INGRESS_LINUM_IDX ; 
 int /*<<< orphan*/  INGRESS_LISTEN_IDX ; 
 int /*<<< orphan*/  RETURN ; 
 int /*<<< orphan*/  addr_map ; 
 struct bpf_sock* FUNC0 (struct bpf_sock*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct bpf_tcp_sock* FUNC3 (struct bpf_sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bpf_sock*,struct bpf_sock*) ; 
 int /*<<< orphan*/  sock_result_map ; 
 int /*<<< orphan*/  tcp_sock_result_map ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_tcp_sock*,struct bpf_tcp_sock*) ; 

int FUNC7(struct __sk_buff *skb)
{
	__u32 srv_idx = ADDR_SRV_IDX, result_idx = INGRESS_LISTEN_IDX;
	struct bpf_tcp_sock *tp, *tp_ret;
	struct bpf_sock *sk, *sk_ret;
	struct sockaddr_in6 *srv_sa6;
	__u32 linum, linum_idx;

	linum_idx = INGRESS_LINUM_IDX;

	sk = skb->sk;
	if (!sk || sk->family != AF_INET6 || !FUNC4(sk->src_ip6))
		RETURN;

	srv_sa6 = FUNC1(&addr_map, &srv_idx);
	if (!srv_sa6 || sk->src_port != FUNC2(srv_sa6->sin6_port))
		RETURN;

	if (sk->state != 10 && sk->state != 12)
		RETURN;

	sk = FUNC0(sk);
	if (!sk)
		RETURN;

	tp = FUNC3(sk);
	if (!tp)
		RETURN;

	sk_ret = FUNC1(&sock_result_map, &result_idx);
	tp_ret = FUNC1(&tcp_sock_result_map, &result_idx);
	if (!sk_ret || !tp_ret)
		RETURN;

	FUNC5(sk_ret, sk);
	FUNC6(tp_ret, tp);

	RETURN;
}