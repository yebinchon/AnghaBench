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
struct sock {unsigned long sk_tsq_flags; } ;
struct TYPE_4__ {TYPE_1__* icsk_af_ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* mtu_reduced ) (struct sock*) ;} ;

/* Variables and functions */
 unsigned long TCPF_DELACK_TIMER_DEFERRED ; 
 unsigned long TCPF_MTU_REDUCED_DEFERRED ; 
 unsigned long TCPF_TSQ_DEFERRED ; 
 unsigned long TCPF_WRITE_TIMER_DEFERRED ; 
 unsigned long TCP_DEFERRED_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 unsigned long FUNC1 (unsigned long*,unsigned long,unsigned long) ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

void FUNC8(struct sock *sk)
{
	unsigned long flags, nflags;

	/* perform an atomic operation only if at least one flag is set */
	do {
		flags = sk->sk_tsq_flags;
		if (!(flags & TCP_DEFERRED_ALL))
			return;
		nflags = flags & ~TCP_DEFERRED_ALL;
	} while (FUNC1(&sk->sk_tsq_flags, flags, nflags) != flags);

	if (flags & TCPF_TSQ_DEFERRED) {
		FUNC6(sk);
		FUNC0(sk);
	}
	/* Here begins the tricky part :
	 * We are called from release_sock() with :
	 * 1) BH disabled
	 * 2) sk_lock.slock spinlock held
	 * 3) socket owned by us (sk->sk_lock.owned == 1)
	 *
	 * But following code is meant to be called from BH handlers,
	 * so we should keep BH disabled, but early release socket ownership
	 */
	FUNC3(sk);

	if (flags & TCPF_WRITE_TIMER_DEFERRED) {
		FUNC7(sk);
		FUNC0(sk);
	}
	if (flags & TCPF_DELACK_TIMER_DEFERRED) {
		FUNC5(sk);
		FUNC0(sk);
	}
	if (flags & TCPF_MTU_REDUCED_DEFERRED) {
		FUNC2(sk)->icsk_af_ops->mtu_reduced(sk);
		FUNC0(sk);
	}
}