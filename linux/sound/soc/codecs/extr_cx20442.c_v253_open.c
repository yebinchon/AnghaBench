
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int receive_room; int * disc_data; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write ) (struct tty_struct*,int ,int) ;} ;


 int EINVAL ;
 int EIO ;
 int ENODEV ;
 int strlen (int ) ;
 int stub1 (struct tty_struct*,int ,int) ;
 int v253_init ;

__attribute__((used)) static int v253_open(struct tty_struct *tty)
{
 int ret, len = strlen(v253_init);


 if (!tty->ops->write)
  return -EINVAL;


 if (!tty->disc_data)
  return -ENODEV;

 tty->receive_room = 16;
 if (tty->ops->write(tty, v253_init, len) != len) {
  ret = -EIO;
  goto err;
 }

 return 0;
err:
 tty->disc_data = ((void*)0);
 return ret;
}
