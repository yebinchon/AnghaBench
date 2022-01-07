
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nci_uart {TYPE_1__* tty; } ;
struct ktermios {int c_cflag; } ;
struct TYPE_2__ {int termios_rwsem; struct ktermios termios; } ;


 int CRTSCTS ;
 int down_read (int *) ;
 int tty_set_termios (TYPE_1__*,struct ktermios*) ;
 int tty_termios_encode_baud_rate (struct ktermios*,int,int) ;
 int up_read (int *) ;

void nci_uart_set_config(struct nci_uart *nu, int baudrate, int flow_ctrl)
{
 struct ktermios new_termios;

 if (!nu->tty)
  return;

 down_read(&nu->tty->termios_rwsem);
 new_termios = nu->tty->termios;
 up_read(&nu->tty->termios_rwsem);
 tty_termios_encode_baud_rate(&new_termios, baudrate, baudrate);

 if (flow_ctrl)
  new_termios.c_cflag |= CRTSCTS;
 else
  new_termios.c_cflag &= ~CRTSCTS;

 tty_set_termios(nu->tty, &new_termios);
}
