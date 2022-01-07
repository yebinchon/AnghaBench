
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_uart {size_t driver; int name; } ;


 int ** nci_uart_drivers ;
 int pr_info (char*,int ,size_t) ;

void nci_uart_unregister(struct nci_uart *nu)
{
 pr_info("NCI uart driver '%s [%d]' unregistered\n", nu->name,
  nu->driver);


 nci_uart_drivers[nu->driver] = ((void*)0);
}
