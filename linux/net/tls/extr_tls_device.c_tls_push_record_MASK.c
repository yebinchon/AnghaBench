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
struct tls_record_info {int num_frags; int /*<<< orphan*/ * frags; int /*<<< orphan*/  list; scalar_t__ len; scalar_t__ end_seq; } ;
struct tls_prot_info {int dummy; } ;
struct tls_offload_context_tx {int /*<<< orphan*/ * sg_tx_data; int /*<<< orphan*/ * open_record; int /*<<< orphan*/  records_list; } ;
struct tls_context {int /*<<< orphan*/  tx; int /*<<< orphan*/  flags; struct tls_prot_info prot_info; } ;
struct tcp_sock {scalar_t__ write_seq; } ;
struct sock {int dummy; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;

/* Variables and functions */
 int /*<<< orphan*/  TLS_TX_SYNC_SCHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct tcp_sock* FUNC9 (struct sock*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct tls_prot_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,struct tls_context*,scalar_t__) ; 
 int FUNC13 (struct sock*,struct tls_context*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC14(struct sock *sk,
			   struct tls_context *ctx,
			   struct tls_offload_context_tx *offload_ctx,
			   struct tls_record_info *record,
			   int flags)
{
	struct tls_prot_info *prot = &ctx->prot_info;
	struct tcp_sock *tp = FUNC9(sk);
	skb_frag_t *frag;
	int i;

	record->end_seq = tp->write_seq + record->len;
	FUNC1(&record->list, &offload_ctx->records_list);
	offload_ctx->open_record = NULL;

	if (FUNC10(TLS_TX_SYNC_SCHED, &ctx->flags))
		FUNC12(sk, ctx, tp->write_seq);

	FUNC11(sk, prot, &ctx->tx);

	for (i = 0; i < record->num_frags; i++) {
		frag = &record->frags[i];
		FUNC4(&offload_ctx->sg_tx_data[i]);
		FUNC3(&offload_ctx->sg_tx_data[i], FUNC7(frag),
			    FUNC8(frag), FUNC6(frag));
		FUNC5(sk, FUNC8(frag));
		FUNC0(FUNC7(frag));
	}
	FUNC2(&offload_ctx->sg_tx_data[record->num_frags - 1]);

	/* all ready, send */
	return FUNC13(sk, ctx, offload_ctx->sg_tx_data, 0, flags);
}