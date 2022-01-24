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
struct tls_sw_context_tx {struct tls_rec* open_rec; } ;
struct tls_rec {int /*<<< orphan*/  msg_encrypted; int /*<<< orphan*/  msg_plaintext; } ;
struct tls_prot_info {scalar_t__ overhead_size; } ;
struct tls_context {struct tls_prot_info prot_info; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,int /*<<< orphan*/ *,int) ; 
 struct tls_context* FUNC1 (struct sock*) ; 
 struct tls_sw_context_tx* FUNC2 (struct tls_context*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, int target_size)
{
	struct tls_context *tls_ctx = FUNC1(sk);
	struct tls_prot_info *prot = &tls_ctx->prot_info;
	struct tls_sw_context_tx *ctx = FUNC2(tls_ctx);
	struct tls_rec *rec = ctx->open_rec;

	FUNC0(sk, &rec->msg_plaintext, target_size);
	if (target_size > 0)
		target_size += prot->overhead_size;
	FUNC0(sk, &rec->msg_encrypted, target_size);
}