#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  work; } ;
struct tls_sw_context_tx {TYPE_3__ tx_work; int /*<<< orphan*/  tx_bitmask; struct tls_rec* open_rec; } ;
struct TYPE_5__ {size_t size; } ;
struct sk_msg {TYPE_2__ sg; } ;
struct tls_rec {scalar_t__ inplace_crypto; struct sk_msg msg_plaintext; } ;
struct tls_prot_info {size_t overhead_size; } ;
struct tls_context {int pending_open_record_frags; struct tls_prot_info prot_info; } ;
struct sock {int sk_err; TYPE_1__* sk_socket; } ;
struct page {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_TX_SCHEDULED ; 
 int EAGAIN ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int MSG_DONTWAIT ; 
 int MSG_MORE ; 
 int MSG_SENDPAGE_NOTLAST ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int TLS_MAX_PAYLOAD_SIZE ; 
 unsigned char TLS_RECORD_TYPE_DATA ; 
 int FUNC0 (struct sk_msg*,struct sock*,int,unsigned char,size_t*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*,size_t) ; 
 scalar_t__ FUNC5 (struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_msg*,struct page*,size_t,int) ; 
 int FUNC7 (struct sock*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 int FUNC9 (struct sock*,long*) ; 
 long FUNC10 (struct sock*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct sock*,size_t) ; 
 struct tls_context* FUNC13 (struct sock*) ; 
 struct tls_rec* FUNC14 (struct sock*) ; 
 struct tls_sw_context_tx* FUNC15 (struct tls_context*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,int) ; 

__attribute__((used)) static int FUNC18(struct sock *sk, struct page *page,
			      int offset, size_t size, int flags)
{
	long timeo = FUNC10(sk, flags & MSG_DONTWAIT);
	struct tls_context *tls_ctx = FUNC13(sk);
	struct tls_sw_context_tx *ctx = FUNC15(tls_ctx);
	struct tls_prot_info *prot = &tls_ctx->prot_info;
	unsigned char record_type = TLS_RECORD_TYPE_DATA;
	struct sk_msg *msg_pl;
	struct tls_rec *rec;
	int num_async = 0;
	size_t copied = 0;
	bool full_record;
	int record_room;
	int ret = 0;
	bool eor;

	eor = !(flags & (MSG_MORE | MSG_SENDPAGE_NOTLAST));
	FUNC3(SOCKWQ_ASYNC_NOSPACE, sk);

	/* Call the sk_stream functions to manage the sndbuf mem. */
	while (size > 0) {
		size_t copy, required_size;

		if (sk->sk_err) {
			ret = -sk->sk_err;
			goto sendpage_end;
		}

		if (ctx->open_rec)
			rec = ctx->open_rec;
		else
			rec = ctx->open_rec = FUNC14(sk);
		if (!rec) {
			ret = -ENOMEM;
			goto sendpage_end;
		}

		msg_pl = &rec->msg_plaintext;

		full_record = false;
		record_room = TLS_MAX_PAYLOAD_SIZE - msg_pl->sg.size;
		copy = size;
		if (copy >= record_room) {
			copy = record_room;
			full_record = true;
		}

		required_size = msg_pl->sg.size + copy + prot->overhead_size;

		if (!FUNC8(sk))
			goto wait_for_sndbuf;
alloc_payload:
		ret = FUNC12(sk, required_size);
		if (ret) {
			if (ret != -ENOSPC)
				goto wait_for_memory;

			/* Adjust copy according to the amount that was
			 * actually allocated. The difference is due
			 * to max sg elements limit
			 */
			copy -= required_size - msg_pl->sg.size;
			full_record = true;
		}

		FUNC6(msg_pl, page, copy, offset);
		FUNC4(sk, copy);

		offset += copy;
		size -= copy;
		copied += copy;

		tls_ctx->pending_open_record_frags = true;
		if (full_record || eor || FUNC5(msg_pl)) {
			rec->inplace_crypto = 0;
			ret = FUNC0(msg_pl, sk, full_record,
						  record_type, &copied, flags);
			if (ret) {
				if (ret == -EINPROGRESS)
					num_async++;
				else if (ret == -ENOMEM)
					goto wait_for_memory;
				else if (ret != -EAGAIN) {
					if (ret == -ENOSPC)
						ret = 0;
					goto sendpage_end;
				}
			}
		}
		continue;
wait_for_sndbuf:
		FUNC2(SOCK_NOSPACE, &sk->sk_socket->flags);
wait_for_memory:
		ret = FUNC9(sk, &timeo);
		if (ret) {
			FUNC16(sk, msg_pl->sg.size);
			goto sendpage_end;
		}

		goto alloc_payload;
	}

	if (num_async) {
		/* Transmit if any encryptions have completed */
		if (FUNC11(BIT_TX_SCHEDULED, &ctx->tx_bitmask)) {
			FUNC1(&ctx->tx_work.work);
			FUNC17(sk, flags);
		}
	}
sendpage_end:
	ret = FUNC7(sk, flags, ret);
	return copied ? copied : ret;
}