
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct rfcomm_dev* driver_data; int index; } ;
struct tty_driver {int dummy; } ;
struct rfcomm_dlc {int dummy; } ;
struct rfcomm_dev {int port; int status; int flags; struct rfcomm_dlc* dlc; } ;


 int ENODEV ;
 int RFCOMM_RELEASE_ONHUP ;
 int RFCOMM_TTY_ATTACHED ;
 int RFCOMM_TTY_OWNED ;
 struct rfcomm_dev* rfcomm_dev_get (int ) ;
 int rfcomm_dlc_lock (struct rfcomm_dlc*) ;
 int rfcomm_dlc_unlock (struct rfcomm_dlc*) ;
 int rfcomm_tty_cleanup (struct tty_struct*) ;
 int set_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_port_install (int *,struct tty_driver*,struct tty_struct*) ;
 int tty_port_put (int *) ;

__attribute__((used)) static int rfcomm_tty_install(struct tty_driver *driver, struct tty_struct *tty)
{
 struct rfcomm_dev *dev;
 struct rfcomm_dlc *dlc;
 int err;

 dev = rfcomm_dev_get(tty->index);
 if (!dev)
  return -ENODEV;

 dlc = dev->dlc;


 rfcomm_dlc_lock(dlc);
 tty->driver_data = dev;
 rfcomm_dlc_unlock(dlc);
 set_bit(RFCOMM_TTY_ATTACHED, &dev->flags);


 err = tty_port_install(&dev->port, driver, tty);
 if (err) {
  rfcomm_tty_cleanup(tty);
  return err;
 }






 if (test_bit(RFCOMM_RELEASE_ONHUP, &dev->flags)) {
  set_bit(RFCOMM_TTY_OWNED, &dev->status);
  tty_port_put(&dev->port);
 }

 return 0;
}
