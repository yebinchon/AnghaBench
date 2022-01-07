
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct nci_uart* disc_data; } ;
struct TYPE_2__ {int (* open ) (struct nci_uart*) ;int (* close ) (struct nci_uart*) ;} ;
struct nci_uart {TYPE_1__ ops; int owner; int rx_lock; int write_work; int tx_q; struct tty_struct* tty; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 unsigned int NCI_UART_DRIVER_MAX ;
 int kfree (struct nci_uart*) ;
 struct nci_uart* kzalloc (int,int ) ;
 int memcpy (struct nci_uart*,int ,int) ;
 int * nci_uart_drivers ;
 int nci_uart_write_work ;
 int skb_queue_head_init (int *) ;
 int spin_lock_init (int *) ;
 int stub1 (struct nci_uart*) ;
 int stub2 (struct nci_uart*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int nci_uart_set_driver(struct tty_struct *tty, unsigned int driver)
{
 struct nci_uart *nu = ((void*)0);
 int ret;

 if (driver >= NCI_UART_DRIVER_MAX)
  return -EINVAL;

 if (!nci_uart_drivers[driver])
  return -ENOENT;

 nu = kzalloc(sizeof(*nu), GFP_KERNEL);
 if (!nu)
  return -ENOMEM;

 memcpy(nu, nci_uart_drivers[driver], sizeof(struct nci_uart));
 nu->tty = tty;
 tty->disc_data = nu;
 skb_queue_head_init(&nu->tx_q);
 INIT_WORK(&nu->write_work, nci_uart_write_work);
 spin_lock_init(&nu->rx_lock);

 ret = nu->ops.open(nu);
 if (ret) {
  tty->disc_data = ((void*)0);
  kfree(nu);
 } else if (!try_module_get(nu->owner)) {
  nu->ops.close(nu);
  tty->disc_data = ((void*)0);
  kfree(nu);
  return -ENOENT;
 }
 return ret;
}
