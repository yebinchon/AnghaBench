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
struct smc_link_group {int /*<<< orphan*/  conns_lock; } ;
struct smc_connection {scalar_t__ alert_token_local; struct smc_link_group* lgr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smc_connection*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct smc_connection *conn)
{
	struct smc_link_group *lgr = conn->lgr;

	if (!lgr)
		return;
	FUNC1(&lgr->conns_lock);
	if (conn->alert_token_local) {
		FUNC0(conn);
	}
	FUNC2(&lgr->conns_lock);
}