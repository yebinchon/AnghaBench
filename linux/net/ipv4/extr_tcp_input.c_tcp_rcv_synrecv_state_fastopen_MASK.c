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
struct sock {int dummy; } ;
struct request_sock {int dummy; } ;
struct TYPE_4__ {scalar_t__ icsk_retransmits; } ;
struct TYPE_3__ {int /*<<< orphan*/  fastopen_rsk; scalar_t__ retrans_stamp; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct request_sock* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct request_sock*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 TYPE_1__* FUNC5 (struct sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int) ; 

__attribute__((used)) static void FUNC7(struct sock *sk)
{
	struct request_sock *req;

	FUNC6(sk, false);

	/* Reset rtx states to prevent spurious retransmits_timed_out() */
	FUNC5(sk)->retrans_stamp = 0;
	FUNC0(sk)->icsk_retransmits = 0;

	/* Once we leave TCP_SYN_RECV or TCP_FIN_WAIT_1,
	 * we no longer need req so release it.
	 */
	req = FUNC2(FUNC5(sk)->fastopen_rsk,
					FUNC1(sk));
	FUNC3(sk, req, false);

	/* Re-arm the timer because data may have been sent out.
	 * This is similar to the regular data transmission case
	 * when new data has just been ack'ed.
	 *
	 * (TFO) - we could try to be more aggressive and
	 * retransmitting any data sooner based on when they
	 * are sent out.
	 */
	FUNC4(sk);
}