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
struct sk_msg {int dummy; } ;
struct tls_rec {struct sk_msg msg_encrypted; } ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sock*,struct sk_msg*,int,int /*<<< orphan*/ ) ; 
 struct tls_context* FUNC1 (struct sock*) ; 
 struct tls_sw_context_tx* FUNC2 (struct tls_context*) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, int len)
{
	struct tls_context *tls_ctx = FUNC1(sk);
	struct tls_sw_context_tx *ctx = FUNC2(tls_ctx);
	struct tls_rec *rec = ctx->open_rec;
	struct sk_msg *msg_en = &rec->msg_encrypted;

	return FUNC0(sk, msg_en, len, 0);
}