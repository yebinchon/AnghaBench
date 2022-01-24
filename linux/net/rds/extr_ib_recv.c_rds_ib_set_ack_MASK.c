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
typedef  int /*<<< orphan*/  u64 ;
struct rds_ib_connection {int /*<<< orphan*/  i_ack_lock; int /*<<< orphan*/  i_ack_flags; int /*<<< orphan*/  i_ack_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_ACK_REQUESTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct rds_ib_connection *ic, u64 seq, int ack_required)
{
	unsigned long flags;

	FUNC1(&ic->i_ack_lock, flags);
	ic->i_ack_next = seq;
	if (ack_required)
		FUNC0(IB_ACK_REQUESTED, &ic->i_ack_flags);
	FUNC2(&ic->i_ack_lock, flags);
}