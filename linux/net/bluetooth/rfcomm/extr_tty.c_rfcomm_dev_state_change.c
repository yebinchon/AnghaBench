
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rfcomm_dlc {scalar_t__ state; struct rfcomm_dev* owner; } ;
struct TYPE_2__ {int open_wait; } ;
struct rfcomm_dev {int err; TYPE_1__ port; } ;


 scalar_t__ BT_CLOSED ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,struct rfcomm_dlc*,struct rfcomm_dev*,int) ;
 int rfcomm_reparent_device (struct rfcomm_dev*) ;
 int tty_port_tty_hangup (TYPE_1__*,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void rfcomm_dev_state_change(struct rfcomm_dlc *dlc, int err)
{
 struct rfcomm_dev *dev = dlc->owner;
 if (!dev)
  return;

 BT_DBG("dlc %p dev %p err %d", dlc, dev, err);

 dev->err = err;
 if (dlc->state == BT_CONNECTED) {
  rfcomm_reparent_device(dev);

  wake_up_interruptible(&dev->port.open_wait);
 } else if (dlc->state == BT_CLOSED)
  tty_port_tty_hangup(&dev->port, 0);
}
