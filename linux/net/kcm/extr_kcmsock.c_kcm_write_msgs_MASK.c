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
struct sock {unsigned int sk_wmem_queued; int /*<<< orphan*/  (* sk_write_space ) (struct sock*) ;int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {struct sk_buff* next; } ;
struct kcm_tx_msg {int sent; unsigned short frag_offset; unsigned short fragidx; struct sk_buff* frag_skb; } ;
struct kcm_sock {int tx_wait_more; struct kcm_psock* tx_psock; struct sock sk; } ;
struct TYPE_5__ {int /*<<< orphan*/  tx_msgs; int /*<<< orphan*/  tx_bytes; } ;
struct kcm_psock {TYPE_2__ stats; TYPE_1__* sk; scalar_t__ tx_stopped; } ;
typedef  int /*<<< orphan*/  skb_frag_t ;
struct TYPE_6__ {unsigned short nr_frags; struct sk_buff* frag_list; int /*<<< orphan*/ * frags; } ;
struct TYPE_4__ {int /*<<< orphan*/  sk_socket; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EPIPE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct kcm_psock*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct kcm_sock*) ; 
 struct kcm_tx_msg* FUNC5 (struct sk_buff*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 struct kcm_psock* FUNC8 (struct kcm_sock*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 unsigned short FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (struct sk_buff*) ; 
 struct sk_buff* FUNC14 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC16 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sock*) ; 
 scalar_t__ FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct kcm_sock*) ; 

__attribute__((used)) static int FUNC20(struct kcm_sock *kcm)
{
	struct sock *sk = &kcm->sk;
	struct kcm_psock *psock;
	struct sk_buff *skb, *head;
	struct kcm_tx_msg *txm;
	unsigned short fragidx, frag_offset;
	unsigned int sent, total_sent = 0;
	int ret = 0;

	kcm->tx_wait_more = false;
	psock = kcm->tx_psock;
	if (FUNC18(psock && psock->tx_stopped)) {
		/* A reserved psock was aborted asynchronously. Unreserve
		 * it and we'll retry the message.
		 */
		FUNC19(kcm);
		FUNC4(kcm);
		if (FUNC15(&sk->sk_write_queue))
			return 0;

		FUNC5(FUNC14(&sk->sk_write_queue))->sent = 0;

	} else if (FUNC15(&sk->sk_write_queue)) {
		return 0;
	}

	head = FUNC14(&sk->sk_write_queue);
	txm = FUNC5(head);

	if (txm->sent) {
		/* Send of first skbuff in queue already in progress */
		if (FUNC2(!psock)) {
			ret = -EINVAL;
			goto out;
		}
		sent = txm->sent;
		frag_offset = txm->frag_offset;
		fragidx = txm->fragidx;
		skb = txm->frag_skb;

		goto do_frag;
	}

try_again:
	psock = FUNC8(kcm);
	if (!psock)
		goto out;

	do {
		skb = head;
		txm = FUNC5(head);
		sent = 0;

do_frag_list:
		if (FUNC2(!FUNC16(skb)->nr_frags)) {
			ret = -EINVAL;
			goto out;
		}

		for (fragidx = 0; fragidx < FUNC16(skb)->nr_frags;
		     fragidx++) {
			skb_frag_t *frag;

			frag_offset = 0;
do_frag:
			frag = &FUNC16(skb)->frags[fragidx];
			if (FUNC2(!FUNC12(frag))) {
				ret = -EINVAL;
				goto out;
			}

			ret = FUNC6(psock->sk->sk_socket,
					      FUNC11(frag),
					      FUNC10(frag) + frag_offset,
					      FUNC12(frag) - frag_offset,
					      MSG_DONTWAIT);
			if (ret <= 0) {
				if (ret == -EAGAIN) {
					/* Save state to try again when there's
					 * write space on the socket
					 */
					txm->sent = sent;
					txm->frag_offset = frag_offset;
					txm->fragidx = fragidx;
					txm->frag_skb = skb;

					ret = 0;
					goto out;
				}

				/* Hard failure in sending message, abort this
				 * psock since it has lost framing
				 * synchonization and retry sending the
				 * message from the beginning.
				 */
				FUNC3(psock, ret ? -ret : EPIPE,
						   true);
				FUNC19(kcm);

				txm->sent = 0;
				FUNC4(kcm);
				ret = 0;

				goto try_again;
			}

			sent += ret;
			frag_offset += ret;
			FUNC0(psock->stats.tx_bytes, ret);
			if (frag_offset < FUNC12(frag)) {
				/* Not finished with this frag */
				goto do_frag;
			}
		}

		if (skb == head) {
			if (FUNC13(skb)) {
				skb = FUNC16(skb)->frag_list;
				goto do_frag_list;
			}
		} else if (skb->next) {
			skb = skb->next;
			goto do_frag_list;
		}

		/* Successfully sent the whole packet, account for it. */
		FUNC9(&sk->sk_write_queue);
		FUNC7(head);
		sk->sk_wmem_queued -= sent;
		total_sent += sent;
		FUNC1(psock->stats.tx_msgs);
	} while ((head = FUNC14(&sk->sk_write_queue)));
out:
	if (!head) {
		/* Done with all queued messages. */
		FUNC2(!FUNC15(&sk->sk_write_queue));
		FUNC19(kcm);
	}

	/* Check if write space is available */
	sk->sk_write_space(sk);

	return total_sent ? : ret;
}