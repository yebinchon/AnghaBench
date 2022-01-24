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
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sock {int sk_rcvbuf; int sk_forward_alloc; int /*<<< orphan*/  sk_drops; int /*<<< orphan*/  sk_rmem_alloc; int /*<<< orphan*/  (* sk_data_ready ) (struct sock*) ;struct sk_buff_head sk_receive_queue; } ;
struct sk_buff {int truesize; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int ENOBUFS ; 
 int ENOMEM ; 
 int SK_MEM_QUANTUM_SHIFT ; 
 int /*<<< orphan*/  SK_MEM_RECV ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff_head*,struct sk_buff*) ; 
 int FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 

int FUNC16(struct sock *sk, struct sk_buff *skb)
{
	struct sk_buff_head *list = &sk->sk_receive_queue;
	int rmem, delta, amt, err = -ENOMEM;
	spinlock_t *busy = NULL;
	int size;

	/* try to avoid the costly atomic add/sub pair when the receive
	 * queue is full; always allow at least a packet
	 */
	rmem = FUNC4(&sk->sk_rmem_alloc);
	if (rmem > sk->sk_rcvbuf)
		goto drop;

	/* Under mem pressure, it might be helpful to help udp_recvmsg()
	 * having linear skbs :
	 * - Reduce memory overhead and thus increase receive queue capacity
	 * - Less cache line misses at copyout() time
	 * - Less work at consume_skb() (less alien page frag freeing)
	 */
	if (rmem > (sk->sk_rcvbuf >> 1)) {
		FUNC9(skb);

		busy = FUNC6(sk);
	}
	size = skb->truesize;
	FUNC15(skb);

	/* we drop only if the receive buf is full and the receive
	 * queue contains some other skb
	 */
	rmem = FUNC2(size, &sk->sk_rmem_alloc);
	if (rmem > (size + sk->sk_rcvbuf))
		goto uncharge_drop;

	FUNC12(&list->lock);
	if (size >= sk->sk_forward_alloc) {
		amt = FUNC8(size);
		delta = amt << SK_MEM_QUANTUM_SHIFT;
		if (!FUNC0(sk, delta, amt, SK_MEM_RECV)) {
			err = -ENOBUFS;
			FUNC13(&list->lock);
			goto uncharge_drop;
		}

		sk->sk_forward_alloc += delta;
	}

	sk->sk_forward_alloc -= size;

	/* no need to setup a destructor, we will explicitly release the
	 * forward allocated memory on dequeue
	 */
	FUNC11(sk, skb);

	FUNC1(list, skb);
	FUNC13(&list->lock);

	if (!FUNC10(sk, SOCK_DEAD))
		sk->sk_data_ready(sk);

	FUNC7(busy);
	return 0;

uncharge_drop:
	FUNC5(skb->truesize, &sk->sk_rmem_alloc);

drop:
	FUNC3(&sk->sk_drops);
	FUNC7(busy);
	return err;
}