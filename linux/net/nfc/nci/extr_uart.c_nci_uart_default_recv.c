
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nci_uart {int ndev; } ;


 int nci_recv_frame (int ,struct sk_buff*) ;

__attribute__((used)) static int nci_uart_default_recv(struct nci_uart *nu, struct sk_buff *skb)
{
 return nci_recv_frame(nu->ndev, skb);
}
