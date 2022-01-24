#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct sock {int dummy; } ;
struct sk_psock {int eval; scalar_t__ cork_bytes; scalar_t__ apply_bytes; struct sock* sk_redir; int /*<<< orphan*/ * cork; } ;
struct TYPE_4__ {size_t start; size_t end; scalar_t__ size; TYPE_1__* data; } ;
struct sk_msg {scalar_t__ cork_bytes; TYPE_2__ sg; } ;
struct TYPE_3__ {scalar_t__ length; scalar_t__ page_link; } ;

/* Variables and functions */
 int EACCES ; 
 int ENOMEM ; 
 int GFP_ATOMIC ; 
 int __GFP_NOWARN ; 
#define  __SK_DROP 130 
 int __SK_NONE ; 
#define  __SK_PASS 129 
#define  __SK_REDIRECT 128 
 int /*<<< orphan*/  FUNC0 (struct sk_msg*) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_msg*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_psock*,scalar_t__) ; 
 int FUNC7 (struct sock*,struct sk_msg*) ; 
 int FUNC8 (struct sock*,struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sk_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sk_msg*,scalar_t__) ; 
 int FUNC11 (struct sock*,struct sk_psock*,struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int FUNC13 (struct sock*,struct sk_msg*,scalar_t__,int,int) ; 
 int FUNC14 (struct sock*,struct sk_msg*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct sock *sk, struct sk_psock *psock,
				struct sk_msg *msg, int *copied, int flags)
{
	bool cork = false, enospc = msg->sg.start == msg->sg.end;
	struct sock *sk_redir;
	u32 tosend, delta = 0;
	int ret;

more_data:
	if (psock->eval == __SK_NONE) {
		/* Track delta in msg size to add/subtract it on SK_DROP from
		 * returned to user copied size. This ensures user doesn't
		 * get a positive return code with msg_cut_data and SK_DROP
		 * verdict.
		 */
		delta = msg->sg.size;
		psock->eval = FUNC11(sk, psock, msg);
		if (msg->sg.size < delta)
			delta -= msg->sg.size;
		else
			delta = 0;
	}

	if (msg->cork_bytes &&
	    msg->cork_bytes > msg->sg.size && !enospc) {
		psock->cork_bytes = msg->cork_bytes - msg->sg.size;
		if (!psock->cork) {
			psock->cork = FUNC1(sizeof(*psock->cork),
					      GFP_ATOMIC | __GFP_NOWARN);
			if (!psock->cork)
				return -ENOMEM;
		}
		FUNC4(psock->cork, msg, sizeof(*msg));
		return 0;
	}

	tosend = msg->sg.size;
	if (psock->apply_bytes && psock->apply_bytes < tosend)
		tosend = psock->apply_bytes;

	switch (psock->eval) {
	case __SK_PASS:
		ret = FUNC13(sk, msg, tosend, flags, true);
		if (FUNC15(ret)) {
			*copied -= FUNC7(sk, msg);
			break;
		}
		FUNC6(psock, tosend);
		break;
	case __SK_REDIRECT:
		sk_redir = psock->sk_redir;
		FUNC6(psock, tosend);
		if (psock->cork) {
			cork = true;
			psock->cork = NULL;
		}
		FUNC10(sk, msg, tosend);
		FUNC5(sk);
		ret = FUNC14(sk_redir, msg, tosend, flags);
		FUNC3(sk);
		if (FUNC15(ret < 0)) {
			int free = FUNC8(sk, msg);

			if (!cork)
				*copied -= free;
		}
		if (cork) {
			FUNC7(sk, msg);
			FUNC0(msg);
			msg = NULL;
			ret = 0;
		}
		break;
	case __SK_DROP:
	default:
		FUNC9(sk, msg, tosend);
		FUNC6(psock, tosend);
		*copied -= (tosend + delta);
		return -EACCES;
	}

	if (FUNC2(!ret)) {
		if (!psock->apply_bytes) {
			psock->eval =  __SK_NONE;
			if (psock->sk_redir) {
				FUNC12(psock->sk_redir);
				psock->sk_redir = NULL;
			}
		}
		if (msg &&
		    msg->sg.data[msg->sg.start].page_link &&
		    msg->sg.data[msg->sg.start].length)
			goto more_data;
	}
	return ret;
}