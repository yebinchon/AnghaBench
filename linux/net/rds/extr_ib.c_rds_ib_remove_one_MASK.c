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
struct rds_ib_device {int /*<<< orphan*/  list; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rds_ib_client ; 
 int /*<<< orphan*/  FUNC3 (struct rds_ib_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct rds_ib_device*) ; 
 int /*<<< orphan*/  rds_ib_devices_lock ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct ib_device *device, void *client_data)
{
	struct rds_ib_device *rds_ibdev = client_data;

	if (!rds_ibdev)
		return;

	FUNC4(rds_ibdev);

	/* stop connection attempts from getting a reference to this device. */
	FUNC1(device, &rds_ib_client, NULL);

	FUNC0(&rds_ib_devices_lock);
	FUNC2(&rds_ibdev->list);
	FUNC6(&rds_ib_devices_lock);

	/*
	 * This synchronize rcu is waiting for readers of both the ib
	 * client data and the devices list to finish before we drop
	 * both of those references.
	 */
	FUNC5();
	FUNC3(rds_ibdev);
	FUNC3(rds_ibdev);
}