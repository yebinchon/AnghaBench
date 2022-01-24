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
struct rds_ib_device {int /*<<< orphan*/  refcount; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 struct rds_ib_device* FUNC0 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  rds_ib_client ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct rds_ib_device *FUNC4(struct ib_device *device)
{
	struct rds_ib_device *rds_ibdev;

	FUNC1();
	rds_ibdev = FUNC0(device, &rds_ib_client);
	if (rds_ibdev)
		FUNC3(&rds_ibdev->refcount);
	FUNC2();
	return rds_ibdev;
}