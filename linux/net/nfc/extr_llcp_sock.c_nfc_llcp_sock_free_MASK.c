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
struct nfc_llcp_sock {int /*<<< orphan*/  local; int /*<<< orphan*/ * parent; int /*<<< orphan*/  accept_queue; int /*<<< orphan*/  tx_pending_queue; int /*<<< orphan*/  tx_queue; int /*<<< orphan*/  service_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct nfc_llcp_sock *sock)
{
	FUNC0(sock->service_name);

	FUNC3(&sock->tx_queue);
	FUNC3(&sock->tx_pending_queue);

	FUNC1(&sock->accept_queue);

	sock->parent = NULL;

	FUNC2(sock->local);
}