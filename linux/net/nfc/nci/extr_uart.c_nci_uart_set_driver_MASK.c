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
struct tty_struct {struct nci_uart* disc_data; } ;
struct TYPE_2__ {int (* open ) (struct nci_uart*) ;int /*<<< orphan*/  (* close ) (struct nci_uart*) ;} ;
struct nci_uart {TYPE_1__ ops; int /*<<< orphan*/  owner; int /*<<< orphan*/  rx_lock; int /*<<< orphan*/  write_work; int /*<<< orphan*/  tx_q; struct tty_struct* tty; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 unsigned int NCI_UART_DRIVER_MAX ; 
 int /*<<< orphan*/  FUNC1 (struct nci_uart*) ; 
 struct nci_uart* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nci_uart*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * nci_uart_drivers ; 
 int /*<<< orphan*/  nci_uart_write_work ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct nci_uart*) ; 
 int /*<<< orphan*/  FUNC7 (struct nci_uart*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct tty_struct *tty, unsigned int driver)
{
	struct nci_uart *nu = NULL;
	int ret;

	if (driver >= NCI_UART_DRIVER_MAX)
		return -EINVAL;

	if (!nci_uart_drivers[driver])
		return -ENOENT;

	nu = FUNC2(sizeof(*nu), GFP_KERNEL);
	if (!nu)
		return -ENOMEM;

	FUNC3(nu, nci_uart_drivers[driver], sizeof(struct nci_uart));
	nu->tty = tty;
	tty->disc_data = nu;
	FUNC4(&nu->tx_q);
	FUNC0(&nu->write_work, nci_uart_write_work);
	FUNC5(&nu->rx_lock);

	ret = nu->ops.open(nu);
	if (ret) {
		tty->disc_data = NULL;
		FUNC1(nu);
	} else if (!FUNC8(nu->owner)) {
		nu->ops.close(nu);
		tty->disc_data = NULL;
		FUNC1(nu);
		return -ENOENT;
	}
	return ret;
}