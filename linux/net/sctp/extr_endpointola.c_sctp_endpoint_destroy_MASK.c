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
struct TYPE_3__ {struct sock* sk; int /*<<< orphan*/  bind_addr; int /*<<< orphan*/  inqueue; int /*<<< orphan*/  dead; } ;
struct sctp_endpoint {TYPE_1__ base; int /*<<< orphan*/  secret_key; int /*<<< orphan*/  endpoint_shared_keys; struct sctp_endpoint* digest; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ep; scalar_t__ bind_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_endpoint*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,struct sctp_endpoint*) ; 
 int /*<<< orphan*/  FUNC2 (struct sctp_endpoint*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_endpoint*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*) ; 
 TYPE_2__* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct sctp_endpoint *ep)
{
	struct sock *sk;

	if (FUNC11(!ep->base.dead)) {
		FUNC1(1, "Attempt to destroy undead endpoint %p!\n", ep);
		return;
	}

	/* Free the digest buffer */
	FUNC2(ep->digest);

	/* SCTP-AUTH: Free up AUTH releated data such as shared keys
	 * chunks and hmacs arrays that were allocated
	 */
	FUNC4(&ep->endpoint_shared_keys);
	FUNC5(ep);

	/* Cleanup. */
	FUNC7(&ep->base.inqueue);
	FUNC6(&ep->base.bind_addr);

	FUNC3(ep->secret_key, 0, sizeof(ep->secret_key));

	sk = ep->base.sk;
	/* Remove and free the port */
	if (FUNC9(sk)->bind_hash)
		FUNC8(sk);

	FUNC9(sk)->ep = NULL;
	/* Give up our hold on the sock */
	FUNC10(sk);

	FUNC2(ep);
	FUNC0(ep);
}