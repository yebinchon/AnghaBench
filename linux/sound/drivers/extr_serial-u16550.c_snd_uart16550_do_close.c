
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uart16550 {scalar_t__ irq; int adaptor; scalar_t__ divisor; int old_divisor_lsb; int old_divisor_msb; int old_line_ctrl_reg; scalar_t__ base; } ;





 scalar_t__ UART_DLL ;
 scalar_t__ UART_DLM ;
 scalar_t__ UART_IER ;
 int UART_IER_RDI ;
 int UART_IER_THRI ;
 scalar_t__ UART_IIR ;
 scalar_t__ UART_LCR ;
 int UART_LCR_DLAB ;
 scalar_t__ UART_MCR ;
 int UART_MCR_DTR ;
 int UART_MCR_OUT2 ;
 int UART_MCR_RTS ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;
 int snd_uart16550_del_timer (struct snd_uart16550*) ;

__attribute__((used)) static void snd_uart16550_do_close(struct snd_uart16550 * uart)
{
 if (uart->irq < 0)
  snd_uart16550_del_timer(uart);





 outb((0 & UART_IER_RDI)
      |(0 & UART_IER_THRI)
      ,uart->base + UART_IER);

 switch (uart->adaptor) {
 default:
  outb((0 & UART_MCR_RTS)
       |(0 & UART_MCR_DTR)
       |(0 & UART_MCR_OUT2)
       ,uart->base + UART_MCR);
   break;
 case 128:
 case 129:


  outb(UART_MCR_RTS | (0&UART_MCR_DTR) | (0&UART_MCR_OUT2),
       uart->base + UART_MCR);
  break;
 case 130:


  outb(UART_MCR_RTS | UART_MCR_DTR | (0&UART_MCR_OUT2),
       uart->base + UART_MCR);
  break;
 }

 inb(uart->base + UART_IIR);


 if (uart->divisor != 0) {
  outb(UART_LCR_DLAB
       ,uart->base + UART_LCR);
  outb(uart->old_divisor_lsb
       ,uart->base + UART_DLL);
  outb(uart->old_divisor_msb
       ,uart->base + UART_DLM);

  outb(uart->old_line_ctrl_reg
       ,uart->base + UART_LCR);
 }
}
