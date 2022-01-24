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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct tls_prot_info {int /*<<< orphan*/  rec_seq_size; } ;
struct tls_offload_context_rx {int resync_type; int /*<<< orphan*/  resync_nh_do_now; int /*<<< orphan*/  resync_req; } ;
struct TYPE_2__ {int /*<<< orphan*/  rec_seq; } ;
struct tls_context {scalar_t__ rx_conf; TYPE_1__ rx; struct tls_prot_info prot_info; } ;
struct sock {int dummy; } ;
typedef  int s64 ;

/* Variables and functions */
 int /*<<< orphan*/  TLS_HEADER_SIZE ; 
 scalar_t__ TLS_HW ; 
 int TLS_MAX_REC_SEQ_SIZE ; 
#define  TLS_OFFLOAD_SYNC_TYPE_CORE_NEXT_HINT 129 
#define  TLS_OFFLOAD_SYNC_TYPE_DRIVER_REQ 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tls_context*,struct sock*,int,int /*<<< orphan*/ *) ; 
 struct tls_context* FUNC7 (struct sock*) ; 
 struct tls_offload_context_rx* FUNC8 (struct tls_context*) ; 

void FUNC9(struct sock *sk, u32 rcd_len, u32 seq)
{
	struct tls_context *tls_ctx = FUNC7(sk);
	struct tls_offload_context_rx *rx_ctx;
	u8 rcd_sn[TLS_MAX_REC_SEQ_SIZE];
	struct tls_prot_info *prot;
	u32 is_req_pending;
	s64 resync_req;
	u32 req_seq;

	if (tls_ctx->rx_conf != TLS_HW)
		return;

	prot = &tls_ctx->prot_info;
	rx_ctx = FUNC8(tls_ctx);
	FUNC3(rcd_sn, tls_ctx->rx.rec_seq, prot->rec_seq_size);

	switch (rx_ctx->resync_type) {
	case TLS_OFFLOAD_SYNC_TYPE_DRIVER_REQ:
		resync_req = FUNC0(&rx_ctx->resync_req);
		req_seq = resync_req >> 32;
		seq += TLS_HEADER_SIZE - 1;
		is_req_pending = resync_req;

		if (FUNC2(!is_req_pending) || req_seq != seq ||
		    !FUNC1(&rx_ctx->resync_req, &resync_req, 0))
			return;
		break;
	case TLS_OFFLOAD_SYNC_TYPE_CORE_NEXT_HINT:
		if (FUNC2(!rx_ctx->resync_nh_do_now))
			return;

		/* head of next rec is already in, note that the sock_inq will
		 * include the currently parsed message when called from parser
		 */
		if (FUNC4(sk) > rcd_len)
			return;

		rx_ctx->resync_nh_do_now = 0;
		seq += rcd_len;
		FUNC5(rcd_sn, prot->rec_seq_size);
		break;
	}

	FUNC6(tls_ctx, sk, seq, rcd_sn);
}