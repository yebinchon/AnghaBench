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
struct smc_cdc_producer_flags {scalar_t__ urg_data_present; scalar_t__ urg_data_pending; } ;
struct TYPE_2__ {struct smc_cdc_producer_flags prod_flags; } ;
struct smc_connection {int /*<<< orphan*/  send_lock; TYPE_1__ local_tx_ctrl; } ;

/* Variables and functions */
 int FUNC0 (struct smc_connection*,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct smc_connection *conn)
{
	struct smc_cdc_producer_flags *pflags = &conn->local_tx_ctrl.prod_flags;
	int rc = 0;

	FUNC2(&conn->send_lock);
	if (!pflags->urg_data_present)
		rc = FUNC0(conn, NULL);
	if (!rc)
		rc = FUNC1(conn);

	if (!rc && pflags->urg_data_present) {
		pflags->urg_data_pending = 0;
		pflags->urg_data_present = 0;
	}
	FUNC3(&conn->send_lock);
	return rc;
}