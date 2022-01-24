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
struct tls_sw_context_tx {int /*<<< orphan*/  aead_send; } ;
struct sk_msg {int dummy; } ;
struct tls_rec {int /*<<< orphan*/ * sg_aead_out; int /*<<< orphan*/  aad_space; int /*<<< orphan*/ * sg_aead_in; struct sk_msg msg_encrypted; struct sk_msg msg_plaintext; } ;
struct tls_prot_info {int /*<<< orphan*/  aad_size; } ;
struct tls_context {struct tls_prot_info prot_info; } ;
struct sock {int /*<<< orphan*/  sk_allocation; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct tls_rec* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_msg*) ; 
 struct tls_context* FUNC6 (struct sock*) ; 
 struct tls_sw_context_tx* FUNC7 (struct tls_context*) ; 

__attribute__((used)) static struct tls_rec *FUNC8(struct sock *sk)
{
	struct tls_context *tls_ctx = FUNC6(sk);
	struct tls_prot_info *prot = &tls_ctx->prot_info;
	struct tls_sw_context_tx *ctx = FUNC7(tls_ctx);
	struct sk_msg *msg_pl, *msg_en;
	struct tls_rec *rec;
	int mem_size;

	mem_size = sizeof(struct tls_rec) + FUNC0(ctx->aead_send);

	rec = FUNC1(mem_size, sk->sk_allocation);
	if (!rec)
		return NULL;

	msg_pl = &rec->msg_plaintext;
	msg_en = &rec->msg_encrypted;

	FUNC5(msg_pl);
	FUNC5(msg_en);

	FUNC2(rec->sg_aead_in, 2);
	FUNC3(&rec->sg_aead_in[0], rec->aad_space, prot->aad_size);
	FUNC4(&rec->sg_aead_in[1]);

	FUNC2(rec->sg_aead_out, 2);
	FUNC3(&rec->sg_aead_out[0], rec->aad_space, prot->aad_size);
	FUNC4(&rec->sg_aead_out[1]);

	return rec;
}