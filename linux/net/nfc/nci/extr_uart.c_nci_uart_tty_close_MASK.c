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
struct tty_struct {int /*<<< orphan*/ * disc_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct nci_uart*) ;} ;
struct nci_uart {int /*<<< orphan*/  write_work; int /*<<< orphan*/  owner; int /*<<< orphan*/ * tty; TYPE_1__ ops; int /*<<< orphan*/  tx_q; int /*<<< orphan*/  rx_skb; int /*<<< orphan*/  tx_skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nci_uart*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct nci_uart*) ; 

__attribute__((used)) static void FUNC6(struct tty_struct *tty)
{
	struct nci_uart *nu = (void *)tty->disc_data;

	/* Detach from the tty */
	tty->disc_data = NULL;

	if (!nu)
		return;

	FUNC2(nu->tx_skb);
	FUNC2(nu->rx_skb);

	FUNC4(&nu->tx_q);

	nu->ops.close(nu);
	nu->tty = NULL;
	FUNC3(nu->owner);

	FUNC0(&nu->write_work);

	FUNC1(nu);
}