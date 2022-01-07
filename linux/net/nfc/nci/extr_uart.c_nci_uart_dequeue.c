
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nci_uart {struct sk_buff* tx_skb; int tx_q; } ;


 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static inline struct sk_buff *nci_uart_dequeue(struct nci_uart *nu)
{
 struct sk_buff *skb = nu->tx_skb;

 if (!skb)
  skb = skb_dequeue(&nu->tx_q);
 else
  nu->tx_skb = ((void*)0);

 return skb;
}
