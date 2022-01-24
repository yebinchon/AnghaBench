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
struct smc_ib_device {int /*<<< orphan*/  event_handler; int /*<<< orphan*/  list; } ;
struct ib_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 struct smc_ib_device* FUNC0 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_ib_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct smc_ib_device*) ; 
 int /*<<< orphan*/  smc_ib_client ; 
 TYPE_1__ smc_ib_devices ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ib_device *ibdev, void *client_data)
{
	struct smc_ib_device *smcibdev;

	smcibdev = FUNC0(ibdev, &smc_ib_client);
	FUNC1(ibdev, &smc_ib_client, NULL);
	FUNC6(&smc_ib_devices.lock);
	FUNC4(&smcibdev->list); /* remove from smc_ib_devices */
	FUNC7(&smc_ib_devices.lock);
	FUNC5(smcibdev);
	FUNC2(&smcibdev->event_handler);
	FUNC3(smcibdev);
}