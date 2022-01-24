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
typedef  size_t u32 ;
struct tls_sw_context_tx {struct tls_rec* open_rec; } ;
struct TYPE_2__ {size_t size; } ;
struct sk_msg {size_t cork_bytes; int apply_bytes; TYPE_1__ sg; } ;
struct tls_rec {struct sk_msg msg_plaintext; } ;
struct tls_context {int dummy; } ;
struct sock {int dummy; } ;
struct sk_psock {int eval; struct sock* sk_redir; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOSPC ; 
 int MSG_SENDPAGE_NOPOLICY ; 
#define  __SK_DROP 130 
 int __SK_NONE ; 
#define  __SK_PASS 129 
#define  __SK_REDIRECT 128 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_msg*,struct sk_msg*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 size_t FUNC4 (struct sock*,struct sk_msg*) ; 
 size_t FUNC5 (struct sock*,struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,struct sk_msg*,int) ; 
 int FUNC7 (struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sk_msg*,int) ; 
 struct sk_psock* FUNC9 (struct sock*) ; 
 int FUNC10 (struct sock*,struct sk_psock*,struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct sk_psock*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int FUNC13 (struct sock*,struct sk_msg*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 struct tls_context* FUNC15 (struct sock*) ; 
 int FUNC16 (struct sock*,int,int /*<<< orphan*/ ) ; 
 struct tls_sw_context_tx* FUNC17 (struct tls_context*) ; 

__attribute__((used)) static int FUNC18(struct sk_msg *msg, struct sock *sk,
			       bool full_record, u8 record_type,
			       size_t *copied, int flags)
{
	struct tls_context *tls_ctx = FUNC15(sk);
	struct tls_sw_context_tx *ctx = FUNC17(tls_ctx);
	struct sk_msg msg_redir = { };
	struct sk_psock *psock;
	struct sock *sk_redir;
	struct tls_rec *rec;
	bool enospc, policy;
	int err = 0, send;
	u32 delta = 0;

	policy = !(flags & MSG_SENDPAGE_NOPOLICY);
	psock = FUNC9(sk);
	if (!psock || !policy)
		return FUNC16(sk, flags, record_type);
more_data:
	enospc = FUNC7(msg);
	if (psock->eval == __SK_NONE) {
		delta = msg->sg.size;
		psock->eval = FUNC10(sk, psock, msg);
		if (delta < msg->sg.size)
			delta -= msg->sg.size;
		else
			delta = 0;
	}
	if (msg->cork_bytes && msg->cork_bytes > msg->sg.size &&
	    !enospc && !full_record) {
		err = -ENOSPC;
		goto out_err;
	}
	msg->cork_bytes = 0;
	send = msg->sg.size;
	if (msg->apply_bytes && msg->apply_bytes < send)
		send = msg->apply_bytes;

	switch (psock->eval) {
	case __SK_PASS:
		err = FUNC16(sk, flags, record_type);
		if (err < 0) {
			*copied -= FUNC4(sk, msg);
			FUNC14(sk);
			goto out_err;
		}
		break;
	case __SK_REDIRECT:
		sk_redir = psock->sk_redir;
		FUNC2(&msg_redir, msg, sizeof(*msg));
		if (msg->apply_bytes < send)
			msg->apply_bytes = 0;
		else
			msg->apply_bytes -= send;
		FUNC8(sk, msg, send);
		msg->sg.size -= send;
		FUNC3(sk);
		err = FUNC13(sk_redir, &msg_redir, send, flags);
		FUNC1(sk);
		if (err < 0) {
			*copied -= FUNC5(sk, &msg_redir);
			msg->sg.size = 0;
		}
		if (msg->sg.size == 0)
			FUNC14(sk);
		break;
	case __SK_DROP:
	default:
		FUNC6(sk, msg, send);
		if (msg->apply_bytes < send)
			msg->apply_bytes = 0;
		else
			msg->apply_bytes -= send;
		if (msg->sg.size == 0)
			FUNC14(sk);
		*copied -= (send + delta);
		err = -EACCES;
	}

	if (FUNC0(!err)) {
		bool reset_eval = !ctx->open_rec;

		rec = ctx->open_rec;
		if (rec) {
			msg = &rec->msg_plaintext;
			if (!msg->apply_bytes)
				reset_eval = true;
		}
		if (reset_eval) {
			psock->eval = __SK_NONE;
			if (psock->sk_redir) {
				FUNC12(psock->sk_redir);
				psock->sk_redir = NULL;
			}
		}
		if (rec)
			goto more_data;
	}
 out_err:
	FUNC11(sk, psock);
	return err;
}