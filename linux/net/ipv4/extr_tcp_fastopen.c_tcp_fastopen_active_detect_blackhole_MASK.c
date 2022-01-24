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
typedef  int u32 ;
struct tcp_sock {scalar_t__ syn_data_acked; scalar_t__ syn_data; scalar_t__ syn_fastopen; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {int icsk_retransmits; } ;

/* Variables and functions */
 int /*<<< orphan*/  LINUX_MIB_TCPFASTOPENACTIVEFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct tcp_sock* FUNC4 (struct sock*) ; 

void FUNC5(struct sock *sk, bool expired)
{
	u32 timeouts = FUNC1(sk)->icsk_retransmits;
	struct tcp_sock *tp = FUNC4(sk);

	/* Broken middle-boxes may black-hole Fast Open connection during or
	 * even after the handshake. Be extremely conservative and pause
	 * Fast Open globally after hitting the third consecutive timeout or
	 * exceeding the configured timeout limit.
	 */
	if ((tp->syn_fastopen || tp->syn_data || tp->syn_data_acked) &&
	    (timeouts == 2 || (timeouts < 2 && expired))) {
		FUNC3(sk);
		FUNC0(FUNC2(sk), LINUX_MIB_TCPFASTOPENACTIVEFAIL);
	}
}