
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nci_uart {int tx_q; } ;


 int nci_uart_tx_wakeup (struct nci_uart*) ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static int nci_uart_send(struct nci_uart *nu, struct sk_buff *skb)
{

 skb_queue_tail(&nu->tx_q, skb);


 nci_uart_tx_wakeup(nu);

 return 0;
}
