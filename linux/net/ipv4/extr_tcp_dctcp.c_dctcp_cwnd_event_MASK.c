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
struct sock {int dummy; } ;
struct dctcp {int /*<<< orphan*/  ce_state; int /*<<< orphan*/  prior_rcv_nxt; } ;
typedef  enum tcp_ca_event { ____Placeholder_tcp_ca_event } tcp_ca_event ;

/* Variables and functions */
#define  CA_EVENT_ECN_IS_CE 130 
#define  CA_EVENT_ECN_NO_CE 129 
#define  CA_EVENT_LOSS 128 
 int /*<<< orphan*/  FUNC0 (struct sock*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 struct dctcp* FUNC2 (struct sock*) ; 

__attribute__((used)) static void FUNC3(struct sock *sk, enum tcp_ca_event ev)
{
	struct dctcp *ca = FUNC2(sk);

	switch (ev) {
	case CA_EVENT_ECN_IS_CE:
	case CA_EVENT_ECN_NO_CE:
		FUNC0(sk, ev, &ca->prior_rcv_nxt, &ca->ce_state);
		break;
	case CA_EVENT_LOSS:
		FUNC1(sk);
		break;
	default:
		/* Don't care for the rest. */
		break;
	}
}