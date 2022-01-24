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
struct tls_sw_context_rx {int /*<<< orphan*/  strp; int /*<<< orphan*/ * recv_pkt; } ;
struct tls_context {int dummy; } ;
struct strp_msg {unsigned int full_len; unsigned int offset; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct strp_msg* FUNC2 (struct sk_buff*) ; 
 struct tls_context* FUNC3 (struct sock*) ; 
 struct tls_sw_context_rx* FUNC4 (struct tls_context*) ; 

__attribute__((used)) static bool FUNC5(struct sock *sk, struct sk_buff *skb,
			       unsigned int len)
{
	struct tls_context *tls_ctx = FUNC3(sk);
	struct tls_sw_context_rx *ctx = FUNC4(tls_ctx);

	if (skb) {
		struct strp_msg *rxm = FUNC2(skb);

		if (len < rxm->full_len) {
			rxm->offset += len;
			rxm->full_len -= len;
			return false;
		}
		FUNC1(skb);
	}

	/* Finished with message */
	ctx->recv_pkt = NULL;
	FUNC0(&ctx->strp);

	return true;
}