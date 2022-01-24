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
struct tls_context {int /*<<< orphan*/  (* sk_destruct ) (struct sock*) ;} ;
struct sock {int dummy; } ;
struct inet_connection_sock {int /*<<< orphan*/  icsk_ulp_data; } ;

/* Variables and functions */
 struct inet_connection_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct tls_context*) ; 
 struct tls_context* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct tls_context *ctx = FUNC4(sk);
	struct inet_connection_sock *icsk = FUNC0(sk);

	ctx->sk_destruct(sk);
	/* Free ctx */
	FUNC1(icsk->icsk_ulp_data, NULL);
	FUNC3(sk, ctx);
}