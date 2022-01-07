
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int flags; scalar_t__ disc_data; } ;
struct nci_uart {struct tty_struct* tty; } ;


 int TTY_DO_WRITE_WAKEUP ;
 int clear_bit (int ,int *) ;
 int nci_uart_tx_wakeup (struct nci_uart*) ;

__attribute__((used)) static void nci_uart_tty_wakeup(struct tty_struct *tty)
{
 struct nci_uart *nu = (void *)tty->disc_data;

 if (!nu)
  return;

 clear_bit(TTY_DO_WRITE_WAKEUP, &tty->flags);

 if (tty != nu->tty)
  return;

 nci_uart_tx_wakeup(nu);
}
