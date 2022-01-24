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
struct tls_offload_context_tx {int /*<<< orphan*/  aead_send; scalar_t__ open_record; } ;
struct tls_context {scalar_t__ tx_conf; int /*<<< orphan*/  refcount; int /*<<< orphan*/  (* sk_destruct ) (struct sock*) ;} ;
struct sock {int dummy; } ;

/* Variables and functions */
 scalar_t__ TLS_HW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tls_offload_context_tx*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct tls_context*) ; 
 struct tls_context* FUNC8 (struct sock*) ; 
 struct tls_offload_context_tx* FUNC9 (struct tls_context*) ; 

__attribute__((used)) static void FUNC10(struct sock *sk)
{
	struct tls_context *tls_ctx = FUNC8(sk);
	struct tls_offload_context_tx *ctx = FUNC9(tls_ctx);

	tls_ctx->sk_destruct(sk);

	if (tls_ctx->tx_conf == TLS_HW) {
		if (ctx->open_record)
			FUNC3(ctx->open_record);
		FUNC2(ctx);
		FUNC1(ctx->aead_send);
		FUNC0(FUNC4(sk));
	}

	if (FUNC5(&tls_ctx->refcount))
		FUNC7(tls_ctx);
}