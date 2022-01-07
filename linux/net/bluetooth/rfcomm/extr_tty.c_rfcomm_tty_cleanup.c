
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {struct rfcomm_dev* driver_data; } ;
struct rfcomm_dev {int port; TYPE_1__* dlc; int flags; } ;
struct TYPE_3__ {int tx_queue; } ;


 int RFCOMM_TTY_ATTACHED ;
 int clear_bit (int ,int *) ;
 int rfcomm_dlc_lock (TYPE_1__*) ;
 int rfcomm_dlc_unlock (TYPE_1__*) ;
 int skb_queue_purge (int *) ;
 int tty_port_put (int *) ;

__attribute__((used)) static void rfcomm_tty_cleanup(struct tty_struct *tty)
{
 struct rfcomm_dev *dev = tty->driver_data;

 clear_bit(RFCOMM_TTY_ATTACHED, &dev->flags);

 rfcomm_dlc_lock(dev->dlc);
 tty->driver_data = ((void*)0);
 rfcomm_dlc_unlock(dev->dlc);





 skb_queue_purge(&dev->dlc->tx_queue);

 tty_port_put(&dev->port);
}
