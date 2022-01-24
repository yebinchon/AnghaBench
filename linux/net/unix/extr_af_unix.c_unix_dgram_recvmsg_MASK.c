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
struct unix_sock {int /*<<< orphan*/  iolock; int /*<<< orphan*/  peer_wait; } ;
struct socket {struct sock* sk; } ;
struct sock {scalar_t__ sk_type; int sk_shutdown; } ;
struct sk_buff {int len; int /*<<< orphan*/  sk; } ;
struct scm_cookie {int /*<<< orphan*/  fp; } ;
struct msghdr {int msg_flags; scalar_t__ msg_name; } ;
typedef  int /*<<< orphan*/  scm ;
struct TYPE_2__ {scalar_t__ fp; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 int EPOLLOUT ; 
 int EPOLLWRBAND ; 
 int EPOLLWRNORM ; 
 int MSG_DONTWAIT ; 
 int MSG_OOB ; 
 int MSG_PEEK ; 
 int MSG_TRUNC ; 
 int RCV_SHUTDOWN ; 
 int /*<<< orphan*/  SOCK_RCVTSTAMP ; 
 scalar_t__ SOCK_SEQPACKET ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 struct sk_buff* FUNC1 (struct sock*,int,int /*<<< orphan*/ *,int*,int*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,int*,long*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct msghdr*,struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct scm_cookie*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct socket*,struct msghdr*,struct scm_cookie*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct scm_cookie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*,size_t) ; 
 int FUNC13 (struct sk_buff*,int,struct msghdr*,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,struct sk_buff*) ; 
 scalar_t__ FUNC15 (struct sock*,int /*<<< orphan*/ ) ; 
 long FUNC16 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct scm_cookie*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct scm_cookie*,struct sk_buff*) ; 
 struct unix_sock* FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 
 int /*<<< orphan*/  FUNC22 (struct sock*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC25(struct socket *sock, struct msghdr *msg,
			      size_t size, int flags)
{
	struct scm_cookie scm;
	struct sock *sk = sock->sk;
	struct unix_sock *u = FUNC20(sk);
	struct sk_buff *skb, *last;
	long timeo;
	int skip;
	int err;

	err = -EOPNOTSUPP;
	if (flags&MSG_OOB)
		goto out;

	timeo = FUNC16(sk, flags & MSG_DONTWAIT);

	do {
		FUNC5(&u->iolock);

		skip = FUNC10(sk, flags);
		skb = FUNC1(sk, flags, NULL, &skip, &err,
					      &last);
		if (skb)
			break;

		FUNC6(&u->iolock);

		if (err != -EAGAIN)
			break;
	} while (timeo &&
		 !FUNC2(sk, &err, &timeo, last));

	if (!skb) { /* implies iolock unlocked */
		FUNC21(sk);
		/* Signal EOF on disconnected non-blocking SEQPACKET socket. */
		if (sk->sk_type == SOCK_SEQPACKET && err == -EAGAIN &&
		    (sk->sk_shutdown & RCV_SHUTDOWN))
			err = 0;
		FUNC22(sk);
		goto out;
	}

	if (FUNC24(&u->peer_wait))
		FUNC23(&u->peer_wait,
						EPOLLOUT | EPOLLWRNORM |
						EPOLLWRBAND);

	if (msg->msg_name)
		FUNC17(msg, skb->sk);

	if (size > skb->len - skip)
		size = skb->len - skip;
	else if (size < skb->len - skip)
		msg->msg_flags |= MSG_TRUNC;

	err = FUNC13(skb, skip, msg, size);
	if (err)
		goto out_free;

	if (FUNC15(sk, SOCK_RCVTSTAMP))
		FUNC3(msg, sk, skb);

	FUNC4(&scm, 0, sizeof(scm));

	FUNC9(&scm, FUNC0(skb).pid, FUNC0(skb).uid, FUNC0(skb).gid);
	FUNC19(&scm, skb);

	if (!(flags & MSG_PEEK)) {
		if (FUNC0(skb).fp)
			FUNC18(&scm, skb);

		FUNC11(sk, skb->len);
	} else {
		/* It is questionable: on PEEK we could:
		   - do not return fds - good, but too simple 8)
		   - return fds, and do not return them on read (old strategy,
		     apparently wrong)
		   - clone fds (I chose it for now, it is the most universal
		     solution)

		   POSIX 1003.1g does not actually define this clearly
		   at all. POSIX 1003.1g doesn't define a lot of things
		   clearly however!

		*/

		FUNC12(sk, size);

		if (FUNC0(skb).fp)
			scm.fp = FUNC7(FUNC0(skb).fp);
	}
	err = (flags & MSG_TRUNC) ? skb->len - skip : size;

	FUNC8(sock, msg, &scm, flags);

out_free:
	FUNC14(sk, skb);
	FUNC6(&u->iolock);
out:
	return err;
}