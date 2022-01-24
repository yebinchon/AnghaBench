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
struct socket_cookie {scalar_t__ cookie_key; int cookie_value; } ;
struct bpf_sock_ops {scalar_t__ family; scalar_t__ op; int local_port; int /*<<< orphan*/  sk; } ;
struct bpf_sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 scalar_t__ BPF_SOCK_OPS_TCP_CONNECT_CB ; 
 scalar_t__ FUNC0 (struct bpf_sock_ops*) ; 
 struct socket_cookie* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  socket_cookies ; 

int FUNC2(struct bpf_sock_ops *ctx)
{
	struct bpf_sock *sk;
	struct socket_cookie *p;

	if (ctx->family != AF_INET6)
		return 1;

	if (ctx->op != BPF_SOCK_OPS_TCP_CONNECT_CB)
		return 1;

	if (!ctx->sk)
		return 1;

	p = FUNC1(&socket_cookies, ctx->sk, 0, 0);
	if (!p)
		return 1;

	if (p->cookie_key != FUNC0(ctx))
		return 1;

	p->cookie_value = (ctx->local_port << 8) | p->cookie_value;

	return 1;
}