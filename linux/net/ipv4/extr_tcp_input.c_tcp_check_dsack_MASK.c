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
typedef  scalar_t__ u32 ;
struct tcp_sock {scalar_t__ undo_retrans; scalar_t__ undo_marker; } ;
struct tcp_sack_block_wire {int /*<<< orphan*/  start_seq; int /*<<< orphan*/  end_seq; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {scalar_t__ ack_seq; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPDSACKOFORECV ; 
 int /*<<< orphan*/  LINUX_MIB_TCPDSACKRECV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sk_buff const*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct tcp_sock*) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 

__attribute__((used)) static bool FUNC8(struct sock *sk, const struct sk_buff *ack_skb,
			    struct tcp_sack_block_wire *sp, int num_sacks,
			    u32 prior_snd_una)
{
	struct tcp_sock *tp = FUNC7(sk);
	u32 start_seq_0 = FUNC4(&sp[0].start_seq);
	u32 end_seq_0 = FUNC4(&sp[0].end_seq);
	bool dup_sack = false;

	if (FUNC3(start_seq_0, FUNC1(ack_skb)->ack_seq)) {
		dup_sack = true;
		FUNC6(tp);
		FUNC0(FUNC5(sk), LINUX_MIB_TCPDSACKRECV);
	} else if (num_sacks > 1) {
		u32 end_seq_1 = FUNC4(&sp[1].end_seq);
		u32 start_seq_1 = FUNC4(&sp[1].start_seq);

		if (!FUNC2(end_seq_0, end_seq_1) &&
		    !FUNC3(start_seq_0, start_seq_1)) {
			dup_sack = true;
			FUNC6(tp);
			FUNC0(FUNC5(sk),
					LINUX_MIB_TCPDSACKOFORECV);
		}
	}

	/* D-SACK for already forgotten data... Do dumb counting. */
	if (dup_sack && tp->undo_marker && tp->undo_retrans > 0 &&
	    !FUNC2(end_seq_0, prior_snd_una) &&
	    FUNC2(end_seq_0, tp->undo_marker))
		tp->undo_retrans--;

	return dup_sack;
}