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
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sock {struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {struct sk_buff_head reader_queue; } ;

/* Variables and functions */
 int EAGAIN ; 
 unsigned int MSG_DONTWAIT ; 
 struct sk_buff* FUNC0 (struct sock*,struct sk_buff_head*,unsigned int,int /*<<< orphan*/ ,int*,int*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*,int*,long*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff_head*,struct sk_buff_head*) ; 
 int FUNC6 (struct sock*) ; 
 long FUNC7 (struct sock*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC12 (struct sock*) ; 
 int /*<<< orphan*/  udp_skb_destructor ; 
 int /*<<< orphan*/  udp_skb_dtor_locked ; 

struct sk_buff *FUNC13(struct sock *sk, unsigned int flags,
			       int noblock, int *off, int *err)
{
	struct sk_buff_head *sk_queue = &sk->sk_receive_queue;
	struct sk_buff_head *queue;
	struct sk_buff *last;
	long timeo;
	int error;

	queue = &FUNC12(sk)->reader_queue;
	flags |= noblock ? MSG_DONTWAIT : 0;
	timeo = FUNC7(sk, flags & MSG_DONTWAIT);
	do {
		struct sk_buff *skb;

		error = FUNC6(sk);
		if (error)
			break;

		error = -EAGAIN;
		do {
			FUNC9(&queue->lock);
			skb = FUNC0(sk, queue, flags,
							udp_skb_destructor,
							off, err, &last);
			if (skb) {
				FUNC11(&queue->lock);
				return skb;
			}

			if (FUNC4(sk_queue)) {
				FUNC11(&queue->lock);
				goto busy_check;
			}

			/* refill the reader queue and walk it again
			 * keep both queues locked to avoid re-acquiring
			 * the sk_receive_queue lock if fwd memory scheduling
			 * is needed.
			 */
			FUNC8(&sk_queue->lock);
			FUNC5(sk_queue, queue);

			skb = FUNC0(sk, queue, flags,
							udp_skb_dtor_locked,
							off, err, &last);
			FUNC10(&sk_queue->lock);
			FUNC11(&queue->lock);
			if (skb)
				return skb;

busy_check:
			if (!FUNC3(sk))
				break;

			FUNC2(sk, flags & MSG_DONTWAIT);
		} while (!FUNC4(sk_queue));

		/* sk_queue is empty, reader_queue may contain peeked packets */
	} while (timeo &&
		 !FUNC1(sk, &error, &timeo,
					      (struct sk_buff *)sk_queue));

	*err = error;
	return NULL;
}