
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;


 int BT_DBG (char*,...) ;
 int BT_ERR (char*) ;
 int ENOIOCTLCMD ;






__attribute__((used)) static int rfcomm_tty_ioctl(struct tty_struct *tty, unsigned int cmd, unsigned long arg)
{
 BT_DBG("tty %p cmd 0x%02x", tty, cmd);

 switch (cmd) {
 case 132:
  BT_DBG("TCGETS is not supported");
  return -ENOIOCTLCMD;

 case 131:
  BT_DBG("TCSETS is not supported");
  return -ENOIOCTLCMD;

 case 130:
  BT_DBG("TIOCMIWAIT");
  break;

 case 128:
  BT_ERR("TIOCSERGETLSR is not supported");
  return -ENOIOCTLCMD;

 case 129:
  BT_ERR("TIOCSERCONFIG is not supported");
  return -ENOIOCTLCMD;

 default:
  return -ENOIOCTLCMD;

 }

 return -ENOIOCTLCMD;
}
