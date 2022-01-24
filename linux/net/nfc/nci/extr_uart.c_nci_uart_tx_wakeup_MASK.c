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
struct nci_uart {int /*<<< orphan*/  write_work; int /*<<< orphan*/  tx_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  NCI_UART_SENDING ; 
 int /*<<< orphan*/  NCI_UART_TX_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct nci_uart *nu)
{
	if (FUNC2(NCI_UART_SENDING, &nu->tx_state)) {
		FUNC1(NCI_UART_TX_WAKEUP, &nu->tx_state);
		return 0;
	}

	FUNC0(&nu->write_work);

	return 0;
}