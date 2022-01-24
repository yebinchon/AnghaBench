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
struct sctp_transport {int /*<<< orphan*/  rcu; scalar_t__ asoc; int /*<<< orphan*/  packet; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,struct sctp_transport*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sctp_transport_destroy_rcu ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct sctp_transport *transport)
{
	if (FUNC5(FUNC2(&transport->refcnt))) {
		FUNC0(1, "Attempt to destroy undead transport %p!\n", transport);
		return;
	}

	FUNC4(&transport->packet);

	if (transport->asoc)
		FUNC3(transport->asoc);

	FUNC1(&transport->rcu, sctp_transport_destroy_rcu);
}