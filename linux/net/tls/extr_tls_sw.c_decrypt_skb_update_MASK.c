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
struct tls_sw_context_rx {int decrypted; int /*<<< orphan*/  (* saved_data_ready ) (struct sock*) ;} ;
struct tls_prot_info {scalar_t__ overhead_size; scalar_t__ prepend_size; } ;
struct tls_context {scalar_t__ rx_conf; int /*<<< orphan*/  rx; struct tls_prot_info prot_info; } ;
struct strp_msg {int full_len; int /*<<< orphan*/  offset; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct iov_iter {int dummy; } ;

/* Variables and functions */
 int EINPROGRESS ; 
 scalar_t__ TLS_HW ; 
 int FUNC0 (struct sock*,struct sk_buff*,struct iov_iter*,int /*<<< orphan*/ *,int*,int*,int) ; 
 int FUNC1 (struct tls_sw_context_rx*,struct tls_prot_info*,struct sk_buff*) ; 
 struct strp_msg* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,struct tls_prot_info*,int /*<<< orphan*/ *) ; 
 int FUNC5 (struct sock*,struct sk_buff*) ; 
 struct tls_context* FUNC6 (struct sock*) ; 
 struct tls_sw_context_rx* FUNC7 (struct tls_context*) ; 

__attribute__((used)) static int FUNC8(struct sock *sk, struct sk_buff *skb,
			      struct iov_iter *dest, int *chunk, bool *zc,
			      bool async)
{
	struct tls_context *tls_ctx = FUNC6(sk);
	struct tls_sw_context_rx *ctx = FUNC7(tls_ctx);
	struct tls_prot_info *prot = &tls_ctx->prot_info;
	struct strp_msg *rxm = FUNC2(skb);
	int pad, err = 0;

	if (!ctx->decrypted) {
		if (tls_ctx->rx_conf == TLS_HW) {
			err = FUNC5(sk, skb);
			if (err < 0)
				return err;
		}

		/* Still not decrypted after tls_device */
		if (!ctx->decrypted) {
			err = FUNC0(sk, skb, dest, NULL, chunk, zc,
					       async);
			if (err < 0) {
				if (err == -EINPROGRESS)
					FUNC4(sk, prot,
							      &tls_ctx->rx);

				return err;
			}
		} else {
			*zc = false;
		}

		pad = FUNC1(ctx, prot, skb);
		if (pad < 0)
			return pad;

		rxm->full_len -= pad;
		rxm->offset += prot->prepend_size;
		rxm->full_len -= prot->overhead_size;
		FUNC4(sk, prot, &tls_ctx->rx);
		ctx->decrypted = true;
		ctx->saved_data_ready(sk);
	} else {
		*zc = false;
	}

	return err;
}