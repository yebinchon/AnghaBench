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
struct sctp_cmd_seq {int dummy; } ;
struct sctp_chunk {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sk; } ;
struct sctp_association {int /*<<< orphan*/  ep; int /*<<< orphan*/  state; TYPE_1__ base; int /*<<< orphan*/  outqueue; } ;
struct net {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SCTP_EVENT_NO_PENDING_TSN ; 
 int /*<<< orphan*/  SCTP_EVENT_T_OTHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sctp_association*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct sctp_chunk*) ; 
 struct net* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct sctp_cmd_seq *cmds,
				 struct sctp_association *asoc,
				 struct sctp_chunk *chunk)
{
	int err = 0;

	if (FUNC2(&asoc->outqueue, chunk)) {
		struct net *net = FUNC3(asoc->base.sk);

		/* There are no more TSNs awaiting SACK.  */
		err = FUNC1(net, SCTP_EVENT_T_OTHER,
				 FUNC0(SCTP_EVENT_NO_PENDING_TSN),
				 asoc->state, asoc->ep, asoc, NULL,
				 GFP_ATOMIC);
	}

	return err;
}