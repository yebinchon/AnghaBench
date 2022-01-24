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
struct tty_struct {int /*<<< orphan*/  flags; scalar_t__ disc_data; } ;
struct nci_uart {struct tty_struct* tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  TTY_DO_WRITE_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nci_uart*) ; 

__attribute__((used)) static void FUNC2(struct tty_struct *tty)
{
	struct nci_uart *nu = (void *)tty->disc_data;

	if (!nu)
		return;

	FUNC0(TTY_DO_WRITE_WAKEUP, &tty->flags);

	if (tty != nu->tty)
		return;

	FUNC1(nu);
}