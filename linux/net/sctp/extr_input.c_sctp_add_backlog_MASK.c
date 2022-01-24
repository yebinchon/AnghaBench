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
struct sock {int /*<<< orphan*/  sk_rcvbuf; } ;
struct sk_buff {int dummy; } ;
struct sctp_transport {int dummy; } ;
struct sctp_ep_common {scalar_t__ type; } ;
struct sctp_chunk {struct sctp_ep_common* rcvr; struct sctp_transport* transport; } ;
struct TYPE_2__ {struct sctp_chunk* chunk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCTP_EP_TYPE_ASSOCIATION ; 
 scalar_t__ SCTP_EP_TYPE_SOCKET ; 
 TYPE_1__* FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_ep_common*) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_transport*) ; 
 int FUNC6 (struct sock*,struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sock *sk, struct sk_buff *skb)
{
	struct sctp_chunk *chunk = FUNC2(skb)->chunk;
	struct sctp_transport *t = chunk->transport;
	struct sctp_ep_common *rcvr = chunk->rcvr;
	int ret;

	ret = FUNC6(sk, skb, FUNC1(sk->sk_rcvbuf));
	if (!ret) {
		/* Hold the assoc/ep while hanging on the backlog queue.
		 * This way, we know structures we need will not disappear
		 * from us
		 */
		if (SCTP_EP_TYPE_ASSOCIATION == rcvr->type)
			FUNC5(t);
		else if (SCTP_EP_TYPE_SOCKET == rcvr->type)
			FUNC3(FUNC4(rcvr));
		else
			FUNC0();
	}
	return ret;

}