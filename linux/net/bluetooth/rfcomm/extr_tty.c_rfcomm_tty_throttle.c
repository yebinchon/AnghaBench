
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct rfcomm_dev {int dlc; } ;


 int BT_DBG (char*,struct tty_struct*,struct rfcomm_dev*) ;
 int rfcomm_dlc_throttle (int ) ;

__attribute__((used)) static void rfcomm_tty_throttle(struct tty_struct *tty)
{
 struct rfcomm_dev *dev = (struct rfcomm_dev *) tty->driver_data;

 BT_DBG("tty %p dev %p", tty, dev);

 rfcomm_dlc_throttle(dev->dlc);
}
