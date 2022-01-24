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
typedef  scalar_t__ u64 ;
struct rds_ib_connection {int /*<<< orphan*/  conn; int /*<<< orphan*/  i_ack_flags; int /*<<< orphan*/  i_ack_wr; TYPE_1__* i_cm_id; int /*<<< orphan*/  i_ack_queued; struct rds_header* i_ack; } ;
struct rds_header {unsigned int h_credit; int /*<<< orphan*/  h_ack; } ;
struct TYPE_2__ {int /*<<< orphan*/  qp; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_ACK_IN_FLIGHT ; 
 int /*<<< orphan*/  IB_ACK_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (struct rds_ib_connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct rds_header*) ; 
 int /*<<< orphan*/  FUNC7 (struct rds_header*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,struct rds_ib_connection*,unsigned long long) ; 
 int /*<<< orphan*/  s_ib_ack_send_failure ; 
 int /*<<< orphan*/  s_ib_ack_sent ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct rds_ib_connection *ic, unsigned int adv_credits)
{
	struct rds_header *hdr = ic->i_ack;
	u64 seq;
	int ret;

	seq = FUNC4(ic);

	FUNC8("send_ack: ic %p ack %llu\n", ic, (unsigned long long) seq);
	FUNC7(hdr, 0, 0, 0);
	hdr->h_ack = FUNC1(seq);
	hdr->h_credit = adv_credits;
	FUNC6(hdr);
	ic->i_ack_queued = jiffies;

	ret = FUNC2(ic->i_cm_id->qp, &ic->i_ack_wr, NULL);
	if (FUNC10(ret)) {
		/* Failed to send. Release the WR, and
		 * force another ACK.
		 */
		FUNC0(IB_ACK_IN_FLIGHT, &ic->i_ack_flags);
		FUNC9(IB_ACK_REQUESTED, &ic->i_ack_flags);

		FUNC5(s_ib_ack_send_failure);

		FUNC3(ic->conn, "sending ack failed\n");
	} else
		FUNC5(s_ib_ack_sent);
}