
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uart16550 {int fifo_limit; char divisor; int old_line_ctrl_reg; int old_divisor_lsb; int old_divisor_msb; int adaptor; scalar_t__ irq; scalar_t__ base; scalar_t__ timer_running; scalar_t__ fifo_count; scalar_t__ buff_out; scalar_t__ buff_in; scalar_t__ buff_in_count; } ;


 int const SNDRV_SERIAL_GENERIC ;



 scalar_t__ UART_DLL ;
 scalar_t__ UART_DLM ;
 scalar_t__ UART_FCR ;
 char UART_FCR_CLEAR_RCVR ;
 char UART_FCR_CLEAR_XMIT ;
 char UART_FCR_ENABLE_FIFO ;
 char UART_FCR_TRIGGER_4 ;
 scalar_t__ UART_IER ;
 char UART_IER_MSI ;
 char UART_IER_RDI ;
 char UART_IER_THRI ;
 scalar_t__ UART_IIR ;
 scalar_t__ UART_LCR ;
 char UART_LCR_DLAB ;
 char UART_LCR_WLEN8 ;
 scalar_t__ UART_LSR ;
 scalar_t__ UART_MCR ;
 char UART_MCR_DTR ;
 char UART_MCR_OUT2 ;
 char UART_MCR_RTS ;
 scalar_t__ UART_RX ;
 int inb (scalar_t__) ;
 int outb (char,scalar_t__) ;

__attribute__((used)) static void snd_uart16550_do_open(struct snd_uart16550 * uart)
{
 char byte;


 uart->buff_in_count = 0;
 uart->buff_in = 0;
 uart->buff_out = 0;
 uart->fifo_limit = 1;
 uart->fifo_count = 0;
 uart->timer_running = 0;

 outb(UART_FCR_ENABLE_FIFO
      | UART_FCR_CLEAR_RCVR
      | UART_FCR_CLEAR_XMIT
      | UART_FCR_TRIGGER_4



      ,uart->base + UART_FCR);

 if ((inb(uart->base + UART_IIR) & 0xf0) == 0xc0)
  uart->fifo_limit = 16;
 if (uart->divisor != 0) {
  uart->old_line_ctrl_reg = inb(uart->base + UART_LCR);
  outb(UART_LCR_DLAB
       ,uart->base + UART_LCR);
  uart->old_divisor_lsb = inb(uart->base + UART_DLL);
  uart->old_divisor_msb = inb(uart->base + UART_DLM);

  outb(uart->divisor
       ,uart->base + UART_DLL);
  outb(0
       ,uart->base + UART_DLM);

 }

 outb(UART_LCR_WLEN8
      | 0
      | 0
      | 0
      ,uart->base + UART_LCR);

 switch (uart->adaptor) {
 default:
  outb(UART_MCR_RTS
       | UART_MCR_DTR
       | UART_MCR_OUT2


       ,uart->base + UART_MCR);
  break;
 case 128:
 case 129:


  outb(UART_MCR_RTS | (0&UART_MCR_DTR) | UART_MCR_OUT2,
       uart->base + UART_MCR);
  break;
 case 130:


  outb(UART_MCR_RTS | UART_MCR_DTR | UART_MCR_OUT2,
       uart->base + UART_MCR);
  break;
 }

 if (uart->irq < 0) {
  byte = (0 & UART_IER_RDI)
      |(0 & UART_IER_THRI)
      ;
 } else if (uart->adaptor == 128) {
  byte = UART_IER_RDI
      | UART_IER_MSI
      ;
 } else if (uart->adaptor == SNDRV_SERIAL_GENERIC) {
  byte = UART_IER_RDI
      | UART_IER_MSI
      | UART_IER_THRI
      ;
 } else {
  byte = UART_IER_RDI
      | UART_IER_THRI
      ;
 }
 outb(byte, uart->base + UART_IER);

 inb(uart->base + UART_LSR);
 inb(uart->base + UART_IIR);
 inb(uart->base + UART_RX);
}
