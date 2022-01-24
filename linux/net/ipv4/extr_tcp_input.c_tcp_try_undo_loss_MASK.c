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
struct tcp_sock {scalar_t__ is_sack_reneg; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {scalar_t__ icsk_retransmits; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*,char*) ; 
 int /*<<< orphan*/  LINUX_MIB_TCPLOSSUNDO ; 
 int /*<<< orphan*/  LINUX_MIB_TCPSPURIOUSRTOS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCP_CA_Open ; 
 TYPE_1__* FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (struct tcp_sock*) ; 
 scalar_t__ FUNC5 (struct tcp_sock*) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*,int /*<<< orphan*/ ) ; 
 struct tcp_sock* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,int) ; 

__attribute__((used)) static bool FUNC9(struct sock *sk, bool frto_undo)
{
	struct tcp_sock *tp = FUNC7(sk);

	if (frto_undo || FUNC5(tp)) {
		FUNC8(sk, true);

		FUNC0(sk, "partial loss");
		FUNC1(FUNC3(sk), LINUX_MIB_TCPLOSSUNDO);
		if (frto_undo)
			FUNC1(FUNC3(sk),
					LINUX_MIB_TCPSPURIOUSRTOS);
		FUNC2(sk)->icsk_retransmits = 0;
		if (frto_undo || FUNC4(tp)) {
			FUNC6(sk, TCP_CA_Open);
			tp->is_sack_reneg = 0;
		}
		return true;
	}
	return false;
}