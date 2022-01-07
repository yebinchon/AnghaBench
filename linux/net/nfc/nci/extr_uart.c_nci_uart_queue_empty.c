
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_uart {int tx_q; scalar_t__ tx_skb; } ;


 int skb_queue_empty (int *) ;

__attribute__((used)) static inline int nci_uart_queue_empty(struct nci_uart *nu)
{
 if (nu->tx_skb)
  return 0;

 return skb_queue_empty(&nu->tx_q);
}
