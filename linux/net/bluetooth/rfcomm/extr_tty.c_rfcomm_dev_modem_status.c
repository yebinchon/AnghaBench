
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct rfcomm_dlc {struct rfcomm_dev* owner; } ;
struct rfcomm_dev {int modem_status; int port; } ;


 int BT_DBG (char*,struct rfcomm_dlc*,struct rfcomm_dev*,int) ;
 int RFCOMM_V24_DV ;
 int RFCOMM_V24_IC ;
 int RFCOMM_V24_RTC ;
 int RFCOMM_V24_RTR ;
 int TIOCM_CD ;
 int TIOCM_CTS ;
 int TIOCM_DSR ;
 int TIOCM_DTR ;
 int TIOCM_RI ;
 int TIOCM_RTS ;
 int tty_port_tty_hangup (int *,int) ;

__attribute__((used)) static void rfcomm_dev_modem_status(struct rfcomm_dlc *dlc, u8 v24_sig)
{
 struct rfcomm_dev *dev = dlc->owner;
 if (!dev)
  return;

 BT_DBG("dlc %p dev %p v24_sig 0x%02x", dlc, dev, v24_sig);

 if ((dev->modem_status & TIOCM_CD) && !(v24_sig & RFCOMM_V24_DV))
  tty_port_tty_hangup(&dev->port, 1);

 dev->modem_status =
  ((v24_sig & RFCOMM_V24_RTC) ? (TIOCM_DSR | TIOCM_DTR) : 0) |
  ((v24_sig & RFCOMM_V24_RTR) ? (TIOCM_RTS | TIOCM_CTS) : 0) |
  ((v24_sig & RFCOMM_V24_IC) ? TIOCM_RI : 0) |
  ((v24_sig & RFCOMM_V24_DV) ? TIOCM_CD : 0);
}
