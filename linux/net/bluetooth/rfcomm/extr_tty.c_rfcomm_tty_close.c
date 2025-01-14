
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ driver_data; } ;
struct TYPE_2__ {int count; } ;
struct rfcomm_dev {TYPE_1__ port; int dlc; } ;
struct file {int dummy; } ;


 int BT_DBG (char*,struct tty_struct*,struct rfcomm_dev*,int ,int ) ;
 int tty_port_close (TYPE_1__*,struct tty_struct*,struct file*) ;

__attribute__((used)) static void rfcomm_tty_close(struct tty_struct *tty, struct file *filp)
{
 struct rfcomm_dev *dev = (struct rfcomm_dev *) tty->driver_data;

 BT_DBG("tty %p dev %p dlc %p opened %d", tty, dev, dev->dlc,
      dev->port.count);

 tty_port_close(&dev->port, tty, filp);
}
