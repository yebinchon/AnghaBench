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
struct nci_uart {TYPE_1__* tty; } ;
struct ktermios {int /*<<< orphan*/  c_cflag; } ;
struct TYPE_2__ {int /*<<< orphan*/  termios_rwsem; struct ktermios termios; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRTSCTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC2 (struct ktermios*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct nci_uart *nu, int baudrate, int flow_ctrl)
{
	struct ktermios new_termios;

	if (!nu->tty)
		return;

	FUNC0(&nu->tty->termios_rwsem);
	new_termios = nu->tty->termios;
	FUNC3(&nu->tty->termios_rwsem);
	FUNC2(&new_termios, baudrate, baudrate);

	if (flow_ctrl)
		new_termios.c_cflag |= CRTSCTS;
	else
		new_termios.c_cflag &= ~CRTSCTS;

	FUNC1(nu->tty, &new_termios);
}