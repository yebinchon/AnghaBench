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
struct socket {struct sock* sk; } ;
struct sock {size_t sk_wmem_queued; int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_allocation; TYPE_1__* sk_socket; scalar_t__ sk_err; } ;
struct sk_buff {size_t len; size_t data_len; size_t truesize; int /*<<< orphan*/  ip_summed; struct sk_buff* next; } ;
struct page {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_msgs; } ;
struct kcm_sock {int tx_wait_more; TYPE_2__ stats; struct sk_buff* seq_skb; int /*<<< orphan*/  sk; } ;
typedef  size_t ssize_t ;
struct TYPE_8__ {struct sk_buff* last_skb; } ;
struct TYPE_7__ {int nr_frags; int /*<<< orphan*/  tx_flags; struct sk_buff* frag_list; int /*<<< orphan*/ * frags; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_UNNECESSARY ; 
 int EAGAIN ; 
 int EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int MAX_SKB_FRAGS ; 
 int MSG_BATCH ; 
 int MSG_DONTWAIT ; 
 int MSG_MORE ; 
 int MSG_SENDPAGE_NOTLAST ; 
 int /*<<< orphan*/  SKBTX_SHARED_FRAG ; 
 int /*<<< orphan*/  SOCKWQ_ASYNC_NOSPACE ; 
 int /*<<< orphan*/  SOCK_NOSPACE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 struct sk_buff* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct kcm_sock*) ; 
 struct kcm_sock* FUNC6 (struct sock*) ; 
 TYPE_4__* FUNC7 (struct sk_buff*) ; 
 int FUNC8 (struct kcm_sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*,size_t) ; 
 int FUNC16 (struct sock*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 int FUNC18 (struct sock*,long*) ; 
 scalar_t__ FUNC19 (struct sk_buff*,int,struct page*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct sk_buff*,int,struct page*,int,size_t) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC24 (struct sk_buff*) ; 
 long FUNC25 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC26 (struct sock*) ; 
 scalar_t__ FUNC27 (int) ; 

__attribute__((used)) static ssize_t FUNC28(struct socket *sock, struct page *page,
			    int offset, size_t size, int flags)

{
	struct sock *sk = sock->sk;
	struct kcm_sock *kcm = FUNC6(sk);
	struct sk_buff *skb = NULL, *head = NULL;
	long timeo = FUNC25(sk, flags & MSG_DONTWAIT);
	bool eor;
	int err = 0;
	int i;

	if (flags & MSG_SENDPAGE_NOTLAST)
		flags |= MSG_MORE;

	/* No MSG_EOR from splice, only look at MSG_MORE */
	eor = !(flags & MSG_MORE);

	FUNC9(sk);

	FUNC14(SOCKWQ_ASYNC_NOSPACE, sk);

	err = -EPIPE;
	if (sk->sk_err)
		goto out_error;

	if (kcm->seq_skb) {
		/* Previously opened message */
		head = kcm->seq_skb;
		skb = FUNC7(head)->last_skb;
		i = FUNC24(skb)->nr_frags;

		if (FUNC19(skb, i, page, offset)) {
			FUNC21(&FUNC24(skb)->frags[i - 1], size);
			FUNC24(skb)->tx_flags |= SKBTX_SHARED_FRAG;
			goto coalesced;
		}

		if (i >= MAX_SKB_FRAGS) {
			struct sk_buff *tskb;

			tskb = FUNC3(0, sk->sk_allocation);
			while (!tskb) {
				FUNC5(kcm);
				err = FUNC18(sk, &timeo);
				if (err)
					goto out_error;
			}

			if (head == skb)
				FUNC24(head)->frag_list = tskb;
			else
				skb->next = tskb;

			skb = tskb;
			skb->ip_summed = CHECKSUM_UNNECESSARY;
			i = 0;
		}
	} else {
		/* Call the sk_stream functions to manage the sndbuf mem. */
		if (!FUNC17(sk)) {
			FUNC5(kcm);
			FUNC13(SOCK_NOSPACE, &sk->sk_socket->flags);
			err = FUNC18(sk, &timeo);
			if (err)
				goto out_error;
		}

		head = FUNC3(0, sk->sk_allocation);
		while (!head) {
			FUNC5(kcm);
			err = FUNC18(sk, &timeo);
			if (err)
				goto out_error;
		}

		skb = head;
		i = 0;
	}

	FUNC4(page);
	FUNC20(skb, i, page, offset, size);
	FUNC24(skb)->tx_flags |= SKBTX_SHARED_FRAG;

coalesced:
	skb->len += size;
	skb->data_len += size;
	skb->truesize += size;
	sk->sk_wmem_queued += size;
	FUNC15(sk, size);

	if (head != skb) {
		head->len += size;
		head->data_len += size;
		head->truesize += size;
	}

	if (eor) {
		bool not_busy = FUNC22(&sk->sk_write_queue);

		/* Message complete, queue it on send buffer */
		FUNC2(&sk->sk_write_queue, head);
		kcm->seq_skb = NULL;
		FUNC1(kcm->stats.tx_msgs);

		if (flags & MSG_BATCH) {
			kcm->tx_wait_more = true;
		} else if (kcm->tx_wait_more || not_busy) {
			err = FUNC8(kcm);
			if (err < 0) {
				/* We got a hard error in write_msgs but have
				 * already queued this message. Report an error
				 * in the socket, but don't affect return value
				 * from sendmsg
				 */
				FUNC10("KCM: Hard failure on kcm_write_msgs\n");
				FUNC12(&kcm->sk, -err);
			}
		}
	} else {
		/* Message not complete, save state */
		kcm->seq_skb = head;
		FUNC7(head)->last_skb = skb;
	}

	FUNC0(kcm->stats.tx_bytes, size);

	FUNC11(sk);
	return size;

out_error:
	FUNC5(kcm);

	err = FUNC16(sk, flags, err);

	/* make sure we wake any epoll edge trigger waiter */
	if (FUNC27(FUNC23(&sk->sk_write_queue) == 0 && err == -EAGAIN))
		sk->sk_write_space(sk);

	FUNC11(sk);
	return err;
}