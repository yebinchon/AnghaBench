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
struct sock {int /*<<< orphan*/  sk_rmem_alloc; } ;
struct sk_buff {scalar_t__ decrypted; int /*<<< orphan*/  tstamp; } ;
struct TYPE_4__ {scalar_t__ seq; scalar_t__ end_seq; int has_rxtstamp; int /*<<< orphan*/  tcp_flags; int /*<<< orphan*/  ack_seq; } ;
struct TYPE_3__ {int /*<<< orphan*/  hwtstamp; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPRCVCOALESCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,int) ; 
 TYPE_1__* FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,struct sk_buff*,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 

__attribute__((used)) static bool FUNC7(struct sock *sk,
			     struct sk_buff *to,
			     struct sk_buff *from,
			     bool *fragstolen)
{
	int delta;

	*fragstolen = false;

	/* Its possible this segment overlaps with prior segment in queue */
	if (FUNC1(from)->seq != FUNC1(to)->end_seq)
		return false;

#ifdef CONFIG_TLS_DEVICE
	if (from->decrypted != to->decrypted)
		return false;
#endif

	if (!FUNC5(to, from, fragstolen, &delta))
		return false;

	FUNC2(delta, &sk->sk_rmem_alloc);
	FUNC3(sk, delta);
	FUNC0(FUNC6(sk), LINUX_MIB_TCPRCVCOALESCE);
	FUNC1(to)->end_seq = FUNC1(from)->end_seq;
	FUNC1(to)->ack_seq = FUNC1(from)->ack_seq;
	FUNC1(to)->tcp_flags |= FUNC1(from)->tcp_flags;

	if (FUNC1(from)->has_rxtstamp) {
		FUNC1(to)->has_rxtstamp = true;
		to->tstamp = from->tstamp;
		FUNC4(to)->hwtstamp = FUNC4(from)->hwtstamp;
	}

	return true;
}