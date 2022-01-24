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
struct sock {int sk_err; TYPE_2__* sk_socket; } ;
struct sk_psock {size_t cork_bytes; struct sk_msg* cork; int /*<<< orphan*/  eval; } ;
struct TYPE_3__ {scalar_t__ size; scalar_t__ end; } ;
struct sk_msg {TYPE_1__ sg; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iter; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int ENOSPC ; 
 int MSG_DONTWAIT ; 
 int MSG_NO_SHARED_FRAGS ; 
 int MSG_SENDPAGE_DECRYPTED ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  __SK_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 scalar_t__ FUNC1 (struct msghdr*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct sock*,struct sk_msg*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_msg*) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_msg*) ; 
 int FUNC7 (struct sock*,int /*<<< orphan*/ *,struct sk_msg*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sk_msg*,scalar_t__) ; 
 struct sk_psock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,struct sk_psock*) ; 
 int FUNC11 (struct sock*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 int FUNC13 (struct sock*,long*) ; 
 long FUNC14 (struct sock*,int) ; 
 int FUNC15 (struct sock*,struct sk_psock*,struct sk_msg*,int*,int) ; 
 int FUNC16 (struct sock*,struct msghdr*,size_t) ; 
 scalar_t__ FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct sock *sk, struct msghdr *msg, size_t size)
{
	struct sk_msg tmp, *msg_tx = NULL;
	int copied = 0, err = 0;
	struct sk_psock *psock;
	long timeo;
	int flags;

	/* Don't let internal do_tcp_sendpages() flags through */
	flags = (msg->msg_flags & ~MSG_SENDPAGE_DECRYPTED);
	flags |= MSG_NO_SHARED_FRAGS;

	psock = FUNC9(sk);
	if (FUNC17(!psock))
		return FUNC16(sk, msg, size);

	FUNC0(sk);
	timeo = FUNC14(sk, msg->msg_flags & MSG_DONTWAIT);
	while (FUNC1(msg)) {
		bool enospc = false;
		u32 copy, osize;

		if (sk->sk_err) {
			err = -sk->sk_err;
			goto out_err;
		}

		copy = FUNC1(msg);
		if (!FUNC12(sk))
			goto wait_for_sndbuf;
		if (psock->cork) {
			msg_tx = psock->cork;
		} else {
			msg_tx = &tmp;
			FUNC6(msg_tx);
		}

		osize = msg_tx->sg.size;
		err = FUNC4(sk, msg_tx, msg_tx->sg.size + copy, msg_tx->sg.end - 1);
		if (err) {
			if (err != -ENOSPC)
				goto wait_for_memory;
			enospc = true;
			copy = msg_tx->sg.size - osize;
		}

		err = FUNC7(sk, &msg->msg_iter, msg_tx,
					       copy);
		if (err < 0) {
			FUNC8(sk, msg_tx, osize);
			goto out_err;
		}

		copied += copy;
		if (psock->cork_bytes) {
			if (size > psock->cork_bytes)
				psock->cork_bytes = 0;
			else
				psock->cork_bytes -= size;
			if (psock->cork_bytes && !enospc)
				goto out_err;
			/* All cork bytes are accounted, rerun the prog. */
			psock->eval = __SK_NONE;
			psock->cork_bytes = 0;
		}

		err = FUNC15(sk, psock, msg_tx, &copied, flags);
		if (FUNC17(err < 0))
			goto out_err;
		continue;
wait_for_sndbuf:
		FUNC3(SOCK_NOSPACE, &sk->sk_socket->flags);
wait_for_memory:
		err = FUNC13(sk, &timeo);
		if (err) {
			if (msg_tx && msg_tx != psock->cork)
				FUNC5(sk, msg_tx);
			goto out_err;
		}
	}
out_err:
	if (err < 0)
		err = FUNC11(sk, msg->msg_flags, err);
	FUNC2(sk);
	FUNC10(sk, psock);
	return copied ? copied : err;
}