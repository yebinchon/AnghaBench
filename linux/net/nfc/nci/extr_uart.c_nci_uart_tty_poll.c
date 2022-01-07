
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct file {int dummy; } ;
typedef int poll_table ;
typedef int __poll_t ;



__attribute__((used)) static __poll_t nci_uart_tty_poll(struct tty_struct *tty,
          struct file *filp, poll_table *wait)
{
 return 0;
}
