
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_uart {int write_work; int tx_state; } ;


 int NCI_UART_SENDING ;
 int NCI_UART_TX_WAKEUP ;
 int schedule_work (int *) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

__attribute__((used)) static int nci_uart_tx_wakeup(struct nci_uart *nu)
{
 if (test_and_set_bit(NCI_UART_SENDING, &nu->tx_state)) {
  set_bit(NCI_UART_TX_WAKEUP, &nu->tx_state);
  return 0;
 }

 schedule_work(&nu->write_work);

 return 0;
}
