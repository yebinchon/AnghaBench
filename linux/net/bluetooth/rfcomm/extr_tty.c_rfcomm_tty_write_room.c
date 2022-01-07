
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct rfcomm_dev {scalar_t__ dlc; } ;


 int BT_DBG (char*,struct tty_struct*,int) ;
 int rfcomm_room (struct rfcomm_dev*) ;

__attribute__((used)) static int rfcomm_tty_write_room(struct tty_struct *tty)
{
 struct rfcomm_dev *dev = (struct rfcomm_dev *) tty->driver_data;
 int room = 0;

 if (dev && dev->dlc)
  room = rfcomm_room(dev);

 BT_DBG("tty %p room %d", tty, room);

 return room;
}
