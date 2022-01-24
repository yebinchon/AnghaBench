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
struct rds_ib_device {int dummy; } ;
struct in6_addr {int /*<<< orphan*/ * s6_addr32; } ;

/* Variables and functions */
 int FUNC0 (struct rds_ib_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rds_ib_device*) ; 
 struct rds_ib_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rds_ib_device*,int /*<<< orphan*/ ) ; 

int FUNC4(struct rds_ib_device *rds_ibdev,
			 struct in6_addr *ipaddr)
{
	struct rds_ib_device *rds_ibdev_old;

	rds_ibdev_old = FUNC2(ipaddr->s6_addr32[3]);
	if (!rds_ibdev_old)
		return FUNC0(rds_ibdev, ipaddr->s6_addr32[3]);

	if (rds_ibdev_old != rds_ibdev) {
		FUNC3(rds_ibdev_old, ipaddr->s6_addr32[3]);
		FUNC1(rds_ibdev_old);
		return FUNC0(rds_ibdev, ipaddr->s6_addr32[3]);
	}
	FUNC1(rds_ibdev_old);

	return 0;
}