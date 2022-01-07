
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int * disc_data; } ;
struct TYPE_2__ {int (* close ) (struct nci_uart*) ;} ;
struct nci_uart {int write_work; int owner; int * tty; TYPE_1__ ops; int tx_q; int rx_skb; int tx_skb; } ;


 int cancel_work_sync (int *) ;
 int kfree (struct nci_uart*) ;
 int kfree_skb (int ) ;
 int module_put (int ) ;
 int skb_queue_purge (int *) ;
 int stub1 (struct nci_uart*) ;

__attribute__((used)) static void nci_uart_tty_close(struct tty_struct *tty)
{
 struct nci_uart *nu = (void *)tty->disc_data;


 tty->disc_data = ((void*)0);

 if (!nu)
  return;

 kfree_skb(nu->tx_skb);
 kfree_skb(nu->rx_skb);

 skb_queue_purge(&nu->tx_q);

 nu->ops.close(nu);
 nu->tty = ((void*)0);
 module_put(nu->owner);

 cancel_work_sync(&nu->write_work);

 kfree(nu);
}
