#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct sock {scalar_t__ sk_state; int sk_shutdown; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;TYPE_2__ sk_receive_queue; int /*<<< orphan*/  sk_wmem_alloc; } ;
struct sk_buff {size_t len; size_t data_len; size_t truesize; } ;
struct scm_cookie {int dummy; } ;
struct page {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  iolock; } ;

/* Variables and functions */
 int EAGAIN ; 
 size_t ENOTCONN ; 
 size_t EOPNOTSUPP ; 
 int EPIPE ; 
 int ERESTARTSYS ; 
 int MSG_DONTWAIT ; 
 int MSG_NOSIGNAL ; 
 int MSG_OOB ; 
 int RCV_SHUTDOWN ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 scalar_t__ TCP_ESTABLISHED ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct scm_cookie*,struct socket*,struct sock*) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct scm_cookie*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct sk_buff*,struct page*,int,size_t) ; 
 struct sk_buff* FUNC10 (TYPE_2__*) ; 
 struct sk_buff* FUNC11 (struct sock*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 struct sock* FUNC16 (struct sock*) ; 
 int FUNC17 (struct scm_cookie*,struct sk_buff*,int) ; 
 TYPE_1__* FUNC18 (struct sock*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,struct scm_cookie*) ; 
 int /*<<< orphan*/  FUNC20 (struct sock*) ; 
 int /*<<< orphan*/  FUNC21 (struct sock*) ; 

__attribute__((used)) static ssize_t FUNC22(struct socket *socket, struct page *page,
				    int offset, size_t size, int flags)
{
	int err;
	bool send_sigpipe = false;
	bool init_scm = true;
	struct scm_cookie scm;
	struct sock *other, *sk = socket->sk;
	struct sk_buff *skb, *newskb = NULL, *tail = NULL;

	if (flags & MSG_OOB)
		return -EOPNOTSUPP;

	other = FUNC16(sk);
	if (!other || sk->sk_state != TCP_ESTABLISHED)
		return -ENOTCONN;

	if (false) {
alloc_skb:
		FUNC21(other);
		FUNC5(&FUNC18(other)->iolock);
		newskb = FUNC11(sk, 0, 0, flags & MSG_DONTWAIT,
					      &err, 0);
		if (!newskb)
			goto err;
	}

	/* we must acquire iolock as we modify already present
	 * skbs in the sk_receive_queue and mess with skb->len
	 */
	err = FUNC4(&FUNC18(other)->iolock);
	if (err) {
		err = flags & MSG_DONTWAIT ? -EAGAIN : -ERESTARTSYS;
		goto err;
	}

	if (sk->sk_shutdown & SEND_SHUTDOWN) {
		err = -EPIPE;
		send_sigpipe = true;
		goto err_unlock;
	}

	FUNC20(other);

	if (FUNC12(other, SOCK_DEAD) ||
	    other->sk_shutdown & RCV_SHUTDOWN) {
		err = -EPIPE;
		send_sigpipe = true;
		goto err_state_unlock;
	}

	if (init_scm) {
		err = FUNC3(&scm, socket, other);
		if (err)
			goto err_state_unlock;
		init_scm = false;
	}

	skb = FUNC10(&other->sk_receive_queue);
	if (tail && tail == skb) {
		skb = newskb;
	} else if (!skb || !FUNC19(skb, &scm)) {
		if (newskb) {
			skb = newskb;
		} else {
			tail = skb;
			goto alloc_skb;
		}
	} else if (newskb) {
		/* this is fast path, we don't necessarily need to
		 * call to kfree_skb even though with newskb == NULL
		 * this - does no harm
		 */
		FUNC1(newskb);
		newskb = NULL;
	}

	if (FUNC9(skb, page, offset, size)) {
		tail = skb;
		goto alloc_skb;
	}

	skb->len += size;
	skb->data_len += size;
	skb->truesize += size;
	FUNC6(size, &sk->sk_wmem_alloc);

	if (newskb) {
		err = FUNC17(&scm, skb, false);
		if (err)
			goto err_state_unlock;
		FUNC13(&other->sk_receive_queue.lock);
		FUNC0(&other->sk_receive_queue, newskb);
		FUNC14(&other->sk_receive_queue.lock);
	}

	FUNC21(other);
	FUNC5(&FUNC18(other)->iolock);

	other->sk_data_ready(other);
	FUNC7(&scm);
	return size;

err_state_unlock:
	FUNC21(other);
err_unlock:
	FUNC5(&FUNC18(other)->iolock);
err:
	FUNC2(newskb);
	if (send_sigpipe && !(flags & MSG_NOSIGNAL))
		FUNC8(SIGPIPE, current, 0);
	if (!init_scm)
		FUNC7(&scm);
	return err;
}