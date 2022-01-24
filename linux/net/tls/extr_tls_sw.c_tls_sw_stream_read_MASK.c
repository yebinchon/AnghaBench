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
struct tls_sw_context_rx {int /*<<< orphan*/  rx_list; scalar_t__ recv_pkt; } ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;
struct sk_psock {int /*<<< orphan*/  ingress_msg; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct sk_psock* FUNC3 (struct sock const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct tls_context* FUNC5 (struct sock const*) ; 
 struct tls_sw_context_rx* FUNC6 (struct tls_context*) ; 

bool FUNC7(const struct sock *sk)
{
	struct tls_context *tls_ctx = FUNC5(sk);
	struct tls_sw_context_rx *ctx = FUNC6(tls_ctx);
	bool ingress_empty = true;
	struct sk_psock *psock;

	FUNC1();
	psock = FUNC3(sk);
	if (psock)
		ingress_empty = FUNC0(&psock->ingress_msg);
	FUNC2();

	return !ingress_empty || ctx->recv_pkt ||
		!FUNC4(&ctx->rx_list);
}