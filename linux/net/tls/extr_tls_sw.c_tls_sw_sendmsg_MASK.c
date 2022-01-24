#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_5__ {int /*<<< orphan*/  work; } ;
struct TYPE_8__ {int err; int /*<<< orphan*/  completion; } ;
struct tls_sw_context_tx {int async_capable; TYPE_1__ tx_work; int /*<<< orphan*/  tx_bitmask; TYPE_4__ async_wait; int /*<<< orphan*/  async_notify; int /*<<< orphan*/  encrypt_pending; struct tls_rec* open_rec; } ;
struct TYPE_6__ {int size; int /*<<< orphan*/  end; } ;
struct sk_msg {TYPE_2__ sg; } ;
struct tls_rec {scalar_t__ inplace_crypto; struct sk_msg msg_encrypted; struct sk_msg msg_plaintext; } ;
struct tls_prot_info {size_t overhead_size; } ;
struct tls_context {int pending_open_record_frags; int /*<<< orphan*/  tx_lock; struct tls_prot_info prot_info; } ;
struct sock {int sk_err; TYPE_3__* sk_socket; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iter; int /*<<< orphan*/  msg_controllen; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_TX_SCHEDULED ; 
 int EAGAIN ; 
 int EINPROGRESS ; 
 int ENOMEM ; 
 int ENOSPC ; 
 int ENOTSUPP ; 
 int MSG_DONTWAIT ; 
 int MSG_MORE ; 
 int MSG_NOSIGNAL ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int TLS_MAX_PAYLOAD_SIZE ; 
 unsigned char TLS_RECORD_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct sk_msg*,struct sock*,int,unsigned char,size_t*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,TYPE_4__*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 size_t FUNC8 (struct msghdr*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct sock*,int /*<<< orphan*/ *,struct sk_msg*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_msg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*,struct sk_msg*,int) ; 
 int FUNC18 (struct sock*,int /*<<< orphan*/ *,struct sk_msg*,size_t) ; 
 int FUNC19 (struct sock*,int,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int FUNC21 (struct sock*,long*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int) ; 
 long FUNC23 (struct sock*,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC25 (struct sock*,int) ; 
 int FUNC26 (struct sock*,int) ; 
 struct tls_context* FUNC27 (struct sock*) ; 
 struct tls_rec* FUNC28 (struct sock*) ; 
 int FUNC29 (struct sock*,struct msghdr*,unsigned char*) ; 
 struct tls_sw_context_tx* FUNC30 (struct tls_context*) ; 
 int /*<<< orphan*/  FUNC31 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC32 (struct sock*,int) ; 
 scalar_t__ FUNC33 (int /*<<< orphan*/ ) ; 

int FUNC34(struct sock *sk, struct msghdr *msg, size_t size)
{
	long timeo = FUNC23(sk, msg->msg_flags & MSG_DONTWAIT);
	struct tls_context *tls_ctx = FUNC27(sk);
	struct tls_prot_info *prot = &tls_ctx->prot_info;
	struct tls_sw_context_tx *ctx = FUNC30(tls_ctx);
	bool async_capable = ctx->async_capable;
	unsigned char record_type = TLS_RECORD_TYPE_DATA;
	bool is_kvec = FUNC5(&msg->msg_iter);
	bool eor = !(msg->msg_flags & MSG_MORE);
	size_t try_to_copy, copied = 0;
	struct sk_msg *msg_pl, *msg_en;
	struct tls_rec *rec;
	int required_size;
	int num_async = 0;
	bool full_record;
	int record_room;
	int num_zc = 0;
	int orig_size;
	int ret = 0;

	if (msg->msg_flags & ~(MSG_MORE | MSG_DONTWAIT | MSG_NOSIGNAL))
		return -ENOTSUPP;

	FUNC9(&tls_ctx->tx_lock);
	FUNC7(sk);

	if (FUNC33(msg->msg_controllen)) {
		ret = FUNC29(sk, msg, &record_type);
		if (ret) {
			if (ret == -EINPROGRESS)
				num_async++;
			else if (ret != -EAGAIN)
				goto send_end;
		}
	}

	while (FUNC8(msg)) {
		if (sk->sk_err) {
			ret = -sk->sk_err;
			goto send_end;
		}

		if (ctx->open_rec)
			rec = ctx->open_rec;
		else
			rec = ctx->open_rec = FUNC28(sk);
		if (!rec) {
			ret = -ENOMEM;
			goto send_end;
		}

		msg_pl = &rec->msg_plaintext;
		msg_en = &rec->msg_encrypted;

		orig_size = msg_pl->sg.size;
		full_record = false;
		try_to_copy = FUNC8(msg);
		record_room = TLS_MAX_PAYLOAD_SIZE - msg_pl->sg.size;
		if (try_to_copy >= record_room) {
			try_to_copy = record_room;
			full_record = true;
		}

		required_size = msg_pl->sg.size + try_to_copy +
				prot->overhead_size;

		if (!FUNC20(sk))
			goto wait_for_sndbuf;

alloc_encrypted:
		ret = FUNC25(sk, required_size);
		if (ret) {
			if (ret != -ENOSPC)
				goto wait_for_memory;

			/* Adjust try_to_copy according to the amount that was
			 * actually allocated. The difference is due
			 * to max sg elements limit
			 */
			try_to_copy -= required_size - msg_en->sg.size;
			full_record = true;
		}

		if (!is_kvec && (full_record || eor) && !async_capable) {
			u32 first = msg_pl->sg.end;

			ret = FUNC18(sk, &msg->msg_iter,
							msg_pl, try_to_copy);
			if (ret)
				goto fallback_to_reg_send;

			rec->inplace_crypto = 0;

			num_zc++;
			copied += try_to_copy;

			FUNC16(msg_pl, first);
			ret = FUNC2(msg_pl, sk, full_record,
						  record_type, &copied,
						  msg->msg_flags);
			if (ret) {
				if (ret == -EINPROGRESS)
					num_async++;
				else if (ret == -ENOMEM)
					goto wait_for_memory;
				else if (ret == -ENOSPC)
					goto rollback_iter;
				else if (ret != -EAGAIN)
					goto send_end;
			}
			continue;
rollback_iter:
			copied -= try_to_copy;
			FUNC15(msg_pl, first);
			FUNC6(&msg->msg_iter,
					msg_pl->sg.size - orig_size);
fallback_to_reg_send:
			FUNC17(sk, msg_pl, orig_size);
		}

		required_size = msg_pl->sg.size + try_to_copy;

		ret = FUNC26(sk, required_size);
		if (ret) {
			if (ret != -ENOSPC)
				goto send_end;

			/* Adjust try_to_copy according to the amount that was
			 * actually allocated. The difference is due
			 * to max sg elements limit
			 */
			try_to_copy -= required_size - msg_pl->sg.size;
			full_record = true;
			FUNC17(sk, msg_en,
				    msg_pl->sg.size + prot->overhead_size);
		}

		if (try_to_copy) {
			ret = FUNC14(sk, &msg->msg_iter,
						       msg_pl, try_to_copy);
			if (ret < 0)
				goto trim_sgl;
		}

		/* Open records defined only if successfully copied, otherwise
		 * we would trim the sg but not reset the open record frags.
		 */
		tls_ctx->pending_open_record_frags = true;
		copied += try_to_copy;
		if (full_record || eor) {
			ret = FUNC2(msg_pl, sk, full_record,
						  record_type, &copied,
						  msg->msg_flags);
			if (ret) {
				if (ret == -EINPROGRESS)
					num_async++;
				else if (ret == -ENOMEM)
					goto wait_for_memory;
				else if (ret != -EAGAIN) {
					if (ret == -ENOSPC)
						ret = 0;
					goto send_end;
				}
			}
		}

		continue;

wait_for_sndbuf:
		FUNC13(SOCK_NOSPACE, &sk->sk_socket->flags);
wait_for_memory:
		ret = FUNC21(sk, &timeo);
		if (ret) {
trim_sgl:
			FUNC31(sk, orig_size);
			goto send_end;
		}

		if (msg_en->sg.size < required_size)
			goto alloc_encrypted;
	}

	if (!num_async) {
		goto send_end;
	} else if (num_zc) {
		/* Wait for pending encryptions to get completed */
		FUNC22(ctx->async_notify, true);

		if (FUNC1(&ctx->encrypt_pending))
			FUNC4(-EINPROGRESS, &ctx->async_wait);
		else
			FUNC11(&ctx->async_wait.completion);

		FUNC0(ctx->async_notify, false);

		if (ctx->async_wait.err) {
			ret = ctx->async_wait.err;
			copied = 0;
		}
	}

	/* Transmit if any encryptions have completed */
	if (FUNC24(BIT_TX_SCHEDULED, &ctx->tx_bitmask)) {
		FUNC3(&ctx->tx_work.work);
		FUNC32(sk, msg->msg_flags);
	}

send_end:
	ret = FUNC19(sk, msg->msg_flags, ret);

	FUNC12(sk);
	FUNC10(&tls_ctx->tx_lock);
	return copied ? copied : ret;
}