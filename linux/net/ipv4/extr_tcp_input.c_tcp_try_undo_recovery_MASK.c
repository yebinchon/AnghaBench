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
struct TYPE_3__ {scalar_t__ reo_wnd_persist; } ;
struct tcp_sock {scalar_t__ snd_una; scalar_t__ high_seq; scalar_t__ is_sack_reneg; scalar_t__ retrans_stamp; TYPE_1__ rack; } ;
struct sock {int dummy; } ;
struct TYPE_4__ {scalar_t__ icsk_ca_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,char*) ; 
 int LINUX_MIB_TCPFULLUNDO ; 
 int LINUX_MIB_TCPLOSSUNDO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ TCP_CA_Loss ; 
 int /*<<< orphan*/  TCP_CA_Open ; 
 TYPE_2__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 scalar_t__ FUNC5 (struct tcp_sock*) ; 
 scalar_t__ FUNC6 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,int) ; 

__attribute__((used)) static bool FUNC10(struct sock *sk)
{
	struct tcp_sock *tp = FUNC8(sk);

	if (FUNC6(tp)) {
		int mib_idx;

		/* Happy end! We did not retransmit anything
		 * or our original transmission succeeded.
		 */
		FUNC0(sk, FUNC2(sk)->icsk_ca_state == TCP_CA_Loss ? "loss" : "retrans");
		FUNC9(sk, false);
		if (FUNC2(sk)->icsk_ca_state == TCP_CA_Loss)
			mib_idx = LINUX_MIB_TCPLOSSUNDO;
		else
			mib_idx = LINUX_MIB_TCPFULLUNDO;

		FUNC1(FUNC3(sk), mib_idx);
	} else if (tp->rack.reo_wnd_persist) {
		tp->rack.reo_wnd_persist--;
	}
	if (tp->snd_una == tp->high_seq && FUNC5(tp)) {
		/* Hold old state until something *above* high_seq
		 * is ACKed. For Reno it is MUST to prevent false
		 * fast retransmits (RFC2582). SACK TCP is safe. */
		if (!FUNC4(sk))
			tp->retrans_stamp = 0;
		return true;
	}
	FUNC7(sk, TCP_CA_Open);
	tp->is_sack_reneg = 0;
	return false;
}