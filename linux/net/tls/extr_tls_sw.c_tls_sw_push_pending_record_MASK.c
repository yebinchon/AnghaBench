#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tls_sw_context_tx {struct tls_rec* open_rec; } ;
struct TYPE_2__ {size_t size; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct tls_rec {struct sk_msg msg_plaintext; } ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLS_RECORD_TYPE_DATA ; 
 int FUNC0 (struct sk_msg*,struct sock*,int,int /*<<< orphan*/ ,size_t*,int) ; 
 struct tls_context* FUNC1 (struct sock*) ; 
 struct tls_sw_context_tx* FUNC2 (struct tls_context*) ; 

__attribute__((used)) static int FUNC3(struct sock *sk, int flags)
{
	struct tls_context *tls_ctx = FUNC1(sk);
	struct tls_sw_context_tx *ctx = FUNC2(tls_ctx);
	struct tls_rec *rec = ctx->open_rec;
	struct sk_msg *msg_pl;
	size_t copied;

	if (!rec)
		return 0;

	msg_pl = &rec->msg_plaintext;
	copied = msg_pl->sg.size;
	if (!copied)
		return 0;

	return FUNC0(msg_pl, sk, true, TLS_RECORD_TYPE_DATA,
				   &copied, flags);
}