
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ recv; scalar_t__ recv_buf; int send; int close; int open; } ;
struct nci_uart {size_t driver; int name; TYPE_1__ ops; } ;


 int EBUSY ;
 int EINVAL ;
 scalar_t__ nci_uart_default_recv ;
 scalar_t__ nci_uart_default_recv_buf ;
 struct nci_uart** nci_uart_drivers ;
 int nci_uart_send ;
 int pr_err (char*,size_t) ;
 int pr_info (char*,int ,size_t) ;

int nci_uart_register(struct nci_uart *nu)
{
 if (!nu || !nu->ops.open ||
     !nu->ops.recv || !nu->ops.close)
  return -EINVAL;


 nu->ops.send = nci_uart_send;


 if (!nu->ops.recv_buf)
  nu->ops.recv_buf = nci_uart_default_recv_buf;
 if (!nu->ops.recv)
  nu->ops.recv = nci_uart_default_recv;


 if (nci_uart_drivers[nu->driver]) {
  pr_err("driver %d is already registered\n", nu->driver);
  return -EBUSY;
 }
 nci_uart_drivers[nu->driver] = nu;

 pr_info("NCI uart driver '%s [%d]' registered\n", nu->name, nu->driver);

 return 0;
}
