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
struct tls_sw_context_rx {int /*<<< orphan*/  (* saved_data_ready ) (struct sock*) ;int /*<<< orphan*/  strp; } ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;
struct sk_psock {int /*<<< orphan*/  ingress_msg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sk_psock* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,struct sk_psock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 struct tls_context* FUNC5 (struct sock*) ; 
 struct tls_sw_context_rx* FUNC6 (struct tls_context*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct tls_context *tls_ctx = FUNC5(sk);
	struct tls_sw_context_rx *ctx = FUNC6(tls_ctx);
	struct sk_psock *psock;

	FUNC3(&ctx->strp);

	psock = FUNC1(sk);
	if (psock && !FUNC0(&psock->ingress_msg)) {
		ctx->saved_data_ready(sk);
		FUNC2(sk, psock);
	}
}