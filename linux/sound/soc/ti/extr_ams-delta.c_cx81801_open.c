
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int * disc_data; } ;
struct TYPE_2__ {int (* open ) (struct tty_struct*) ;} ;


 int ENODEV ;
 int * cx20442_codec ;
 int stub1 (struct tty_struct*) ;
 TYPE_1__ v253_ops ;

__attribute__((used)) static int cx81801_open(struct tty_struct *tty)
{
 int ret;

 if (!cx20442_codec)
  return -ENODEV;





 tty->disc_data = cx20442_codec;

 ret = v253_ops.open(tty);

 if (ret < 0)
  tty->disc_data = ((void*)0);

 return ret;
}
