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
struct smcd_dev {int /*<<< orphan*/  lock; struct smc_connection** conn; } ;
struct smc_connection {int /*<<< orphan*/  rx_tsklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct smcd_dev *smcd, unsigned int dmbno)
{
	struct smc_connection *conn = NULL;
	unsigned long flags;

	FUNC0(&smcd->lock, flags);
	conn = smcd->conn[dmbno];
	if (conn)
		FUNC2(&conn->rx_tsklet);
	FUNC1(&smcd->lock, flags);
}