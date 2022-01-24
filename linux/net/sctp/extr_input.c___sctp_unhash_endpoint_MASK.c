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
struct sock {int /*<<< orphan*/  sk_reuseport_cb; } ;
struct sctp_hashbucket {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;
struct sctp_ep_common {size_t hashent; int /*<<< orphan*/  node; TYPE_1__ bind_addr; struct sock* sk; } ;
struct sctp_endpoint {struct sctp_ep_common base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sctp_hashbucket* sctp_ep_hashtable ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct sctp_endpoint *ep)
{
	struct sock *sk = ep->base.sk;
	struct sctp_hashbucket *head;
	struct sctp_ep_common *epb;

	epb = &ep->base;

	epb->hashent = FUNC3(FUNC4(sk), epb->bind_addr.port);

	head = &sctp_ep_hashtable[epb->hashent];

	if (FUNC1(sk->sk_reuseport_cb))
		FUNC2(sk);

	FUNC5(&head->lock);
	FUNC0(&epb->node);
	FUNC6(&head->lock);
}