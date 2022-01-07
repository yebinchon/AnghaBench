
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int index; struct rfcomm_dev* driver_data; } ;
struct TYPE_2__ {int count; } ;
struct rfcomm_dev {int dlc; TYPE_1__ port; int channel; int dst; } ;
struct file {int dummy; } ;


 int BT_DBG (char*,...) ;
 int rfcomm_dlc_unthrottle (int ) ;
 int rfcomm_tty_copy_pending (struct rfcomm_dev*) ;
 int tty_port_open (TYPE_1__*,struct tty_struct*,struct file*) ;

__attribute__((used)) static int rfcomm_tty_open(struct tty_struct *tty, struct file *filp)
{
 struct rfcomm_dev *dev = tty->driver_data;
 int err;

 BT_DBG("tty %p id %d", tty, tty->index);

 BT_DBG("dev %p dst %pMR channel %d opened %d", dev, &dev->dst,
        dev->channel, dev->port.count);

 err = tty_port_open(&dev->port, tty, filp);
 if (err)
  return err;






 rfcomm_tty_copy_pending(dev);

 rfcomm_dlc_unthrottle(dev->dlc);

 return 0;
}
