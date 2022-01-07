
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct rfcomm_dev {int modem_status; } ;


 int BT_DBG (char*,struct tty_struct*,struct rfcomm_dev*) ;

__attribute__((used)) static int rfcomm_tty_tiocmget(struct tty_struct *tty)
{
 struct rfcomm_dev *dev = (struct rfcomm_dev *) tty->driver_data;

 BT_DBG("tty %p dev %p", tty, dev);

 return dev->modem_status;
}
