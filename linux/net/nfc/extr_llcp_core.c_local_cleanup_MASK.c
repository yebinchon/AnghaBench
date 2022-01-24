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
struct nfc_llcp_local {int /*<<< orphan*/  pending_sdreqs; int /*<<< orphan*/  sdreq_timeout_work; int /*<<< orphan*/  sdreq_timer; int /*<<< orphan*/  rx_pending; int /*<<< orphan*/  timeout_work; int /*<<< orphan*/  rx_work; int /*<<< orphan*/  tx_work; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  link_timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nfc_llcp_local*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct nfc_llcp_local *local)
{
	FUNC4(local, false, ENXIO);
	FUNC1(&local->link_timer);
	FUNC5(&local->tx_queue);
	FUNC0(&local->tx_work);
	FUNC0(&local->rx_work);
	FUNC0(&local->timeout_work);
	FUNC2(local->rx_pending);
	FUNC1(&local->sdreq_timer);
	FUNC0(&local->sdreq_timeout_work);
	FUNC3(&local->pending_sdreqs);
}