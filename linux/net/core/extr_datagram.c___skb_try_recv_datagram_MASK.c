#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sk_buff_head {int /*<<< orphan*/  lock; int /*<<< orphan*/  prev; } ;
struct sock {struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 unsigned int MSG_DONTWAIT ; 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (struct sock*,struct sk_buff_head*,unsigned int,void (*) (struct sock*,struct sk_buff*),int*,int*,struct sk_buff**) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

struct sk_buff *FUNC7(struct sock *sk, unsigned int flags,
					void (*destructor)(struct sock *sk,
							   struct sk_buff *skb),
					int *off, int *err,
					struct sk_buff **last)
{
	struct sk_buff_head *queue = &sk->sk_receive_queue;
	struct sk_buff *skb;
	unsigned long cpu_flags;
	/*
	 * Caller is allowed not to check sk->sk_err before skb_recv_datagram()
	 */
	int error = FUNC4(sk);

	if (error)
		goto no_packet;

	do {
		/* Again only user level code calls this function, so nothing
		 * interrupt level will suddenly eat the receive_queue.
		 *
		 * Look at current nfs client by the way...
		 * However, this function was correct in any case. 8)
		 */
		FUNC5(&queue->lock, cpu_flags);
		skb = FUNC1(sk, queue, flags, destructor,
						off, &error, last);
		FUNC6(&queue->lock, cpu_flags);
		if (error)
			goto no_packet;
		if (skb)
			return skb;

		if (!FUNC3(sk))
			break;

		FUNC2(sk, flags & MSG_DONTWAIT);
	} while (FUNC0(sk->sk_receive_queue.prev) != *last);

	error = -EAGAIN;

no_packet:
	*err = error;
	return NULL;
}