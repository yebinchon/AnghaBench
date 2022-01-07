
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tty_struct {scalar_t__ disc_data; } ;
struct TYPE_2__ {int (* recv_buf ) (struct nci_uart*,void*,char*,int) ;} ;
struct nci_uart {int rx_lock; TYPE_1__ ops; struct tty_struct* tty; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct nci_uart*,void*,char*,int) ;
 int tty_unthrottle (struct tty_struct*) ;

__attribute__((used)) static void nci_uart_tty_receive(struct tty_struct *tty, const u8 *data,
     char *flags, int count)
{
 struct nci_uart *nu = (void *)tty->disc_data;

 if (!nu || tty != nu->tty)
  return;

 spin_lock(&nu->rx_lock);
 nu->ops.recv_buf(nu, (void *)data, flags, count);
 spin_unlock(&nu->rx_lock);

 tty_unthrottle(tty);
}
