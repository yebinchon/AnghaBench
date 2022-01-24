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
struct smc_link_group {int /*<<< orphan*/  conns_num; scalar_t__ is_smcd; } ;
struct smc_connection {struct smc_link_group* lgr; int /*<<< orphan*/  rx_tsklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smc_connection*,struct smc_link_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC2 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC3 (struct smc_link_group*) ; 
 int /*<<< orphan*/  FUNC4 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(struct smc_connection *conn)
{
	struct smc_link_group *lgr = conn->lgr;

	if (!lgr)
		return;
	if (lgr->is_smcd) {
		FUNC2(conn);
		FUNC5(&conn->rx_tsklet);
	} else {
		FUNC1(conn);
	}
	FUNC4(conn);
	FUNC0(conn, lgr);		/* allow buffer reuse */
	conn->lgr = NULL;

	if (!lgr->conns_num)
		FUNC3(lgr);
}