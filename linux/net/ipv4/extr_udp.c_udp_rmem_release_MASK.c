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
struct udp_sock {int forward_deficit; int /*<<< orphan*/  reader_queue; } ;
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sock {int sk_rcvbuf; int sk_forward_alloc; int /*<<< orphan*/  sk_rmem_alloc; struct sk_buff_head sk_receive_queue; } ;

/* Variables and functions */
 int SK_MEM_QUANTUM ; 
 int SK_MEM_QUANTUM_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct udp_sock* FUNC6 (struct sock*) ; 

__attribute__((used)) static void FUNC7(struct sock *sk, int size, int partial,
			     bool rx_queue_lock_held)
{
	struct udp_sock *up = FUNC6(sk);
	struct sk_buff_head *sk_queue;
	int amt;

	if (FUNC2(partial)) {
		up->forward_deficit += size;
		size = up->forward_deficit;
		if (size < (sk->sk_rcvbuf >> 2))
			return;
	} else {
		size += up->forward_deficit;
	}
	up->forward_deficit = 0;

	/* acquire the sk_receive_queue for fwd allocated memory scheduling,
	 * if the called don't held it already
	 */
	sk_queue = &sk->sk_receive_queue;
	if (!rx_queue_lock_held)
		FUNC4(&sk_queue->lock);


	sk->sk_forward_alloc += size;
	amt = (sk->sk_forward_alloc - partial) & ~(SK_MEM_QUANTUM - 1);
	sk->sk_forward_alloc -= amt;

	if (amt)
		FUNC0(sk, amt >> SK_MEM_QUANTUM_SHIFT);

	FUNC1(size, &sk->sk_rmem_alloc);

	/* this can save us from acquiring the rx queue lock on next receive */
	FUNC3(sk_queue, &up->reader_queue);

	if (!rx_queue_lock_held)
		FUNC5(&sk_queue->lock);
}