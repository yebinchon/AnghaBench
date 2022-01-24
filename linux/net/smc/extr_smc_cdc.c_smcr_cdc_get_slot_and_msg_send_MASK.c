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
struct smc_wr_buf {int dummy; } ;
struct smc_connection {int /*<<< orphan*/  send_lock; } ;
struct smc_cdc_tx_pend {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct smc_connection*,struct smc_wr_buf**,int /*<<< orphan*/ *,struct smc_cdc_tx_pend**) ; 
 int FUNC1 (struct smc_connection*,struct smc_wr_buf*,struct smc_cdc_tx_pend*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct smc_connection *conn)
{
	struct smc_cdc_tx_pend *pend;
	struct smc_wr_buf *wr_buf;
	int rc;

	rc = FUNC0(conn, &wr_buf, NULL, &pend);
	if (rc)
		return rc;

	FUNC2(&conn->send_lock);
	rc = FUNC1(conn, wr_buf, pend);
	FUNC3(&conn->send_lock);
	return rc;
}