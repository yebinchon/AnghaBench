
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int receive_room; int * disc_data; TYPE_1__* ops; } ;
struct TYPE_2__ {int write; } ;


 int EOPNOTSUPP ;
 int tty_driver_flush_buffer (struct tty_struct*) ;

__attribute__((used)) static int nci_uart_tty_open(struct tty_struct *tty)
{



 if (!tty->ops->write)
  return -EOPNOTSUPP;

 tty->disc_data = ((void*)0);
 tty->receive_room = 65536;


 tty_driver_flush_buffer(tty);

 return 0;
}
