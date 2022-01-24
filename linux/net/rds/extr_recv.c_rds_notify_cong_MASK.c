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
typedef  int /*<<< orphan*/  uint64_t ;
struct rds_sock {int /*<<< orphan*/  rs_lock; int /*<<< orphan*/  rs_cong_notify; } ;
struct msghdr {int dummy; } ;
typedef  int /*<<< orphan*/  notify ;

/* Variables and functions */
 int /*<<< orphan*/  RDS_CMSG_CONG_UPDATE ; 
 int /*<<< orphan*/  SOL_RDS ; 
 int FUNC0 (struct msghdr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC3(struct rds_sock *rs, struct msghdr *msghdr)
{
	uint64_t notify = rs->rs_cong_notify;
	unsigned long flags;
	int err;

	err = FUNC0(msghdr, SOL_RDS, RDS_CMSG_CONG_UPDATE,
			sizeof(notify), &notify);
	if (err)
		return err;

	FUNC1(&rs->rs_lock, flags);
	rs->rs_cong_notify &= ~notify;
	FUNC2(&rs->rs_lock, flags);

	return 0;
}