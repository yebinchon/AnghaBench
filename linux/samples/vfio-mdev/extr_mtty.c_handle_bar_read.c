
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct mdev_state {TYPE_2__* s; int rxtx_lock; } ;
struct TYPE_3__ {size_t head; size_t tail; int* fifo; int count; } ;
struct TYPE_4__ {int divisor; int* uart_reg; int max_fifo_size; TYPE_1__ rxtx; int overrun; int intr_trigger_level; int dlab; } ;


 int CIRCULAR_BUF_INC_IDX (size_t) ;

 int UART_IER_MSI ;
 int UART_IER_RDI ;
 int UART_IER_RLSI ;
 int UART_IER_THRI ;

 int UART_IIR_MSI ;
 int UART_IIR_NO_INT ;
 int UART_IIR_RDI ;
 int UART_IIR_RLSI ;
 int UART_IIR_THRI ;


 int UART_LSR_DR ;
 int UART_LSR_OE ;
 int UART_LSR_TEMT ;
 int UART_LSR_THRE ;

 int UART_MCR_AFE ;
 int UART_MCR_DTR ;
 int UART_MCR_RTS ;

 int UART_MSR_CTS ;
 int UART_MSR_DCD ;
 int UART_MSR_DCTS ;
 int UART_MSR_DDSR ;
 int UART_MSR_DSR ;


 int mtty_trigger_interrupt (struct mdev_state*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_err (char*,unsigned int) ;

__attribute__((used)) static void handle_bar_read(unsigned int index, struct mdev_state *mdev_state,
       u16 offset, u8 *buf, u32 count)
{

 switch (offset) {
 case 129:

  if (mdev_state->s[index].dlab) {
   *buf = (u8)mdev_state->s[index].divisor;
   break;
  }

  mutex_lock(&mdev_state->rxtx_lock);

  if (mdev_state->s[index].rxtx.head !=
     mdev_state->s[index].rxtx.tail) {
   *buf = mdev_state->s[index].rxtx.fifo[
      mdev_state->s[index].rxtx.tail];
   mdev_state->s[index].rxtx.count--;
   CIRCULAR_BUF_INC_IDX(mdev_state->s[index].rxtx.tail);
  }

  if (mdev_state->s[index].rxtx.head ==
    mdev_state->s[index].rxtx.tail) {







   if (mdev_state->s[index].uart_reg[135] &
        UART_IER_THRI)
    mtty_trigger_interrupt(mdev_state);
  }
  mutex_unlock(&mdev_state->rxtx_lock);

  break;

 case 135:
  if (mdev_state->s[index].dlab) {
   *buf = (u8)(mdev_state->s[index].divisor >> 8);
   break;
  }
  *buf = mdev_state->s[index].uart_reg[offset] & 0x0f;
  break;

 case 134:
 {
  u8 ier = mdev_state->s[index].uart_reg[135];
  *buf = 0;

  mutex_lock(&mdev_state->rxtx_lock);

  if ((ier & UART_IER_RLSI) && mdev_state->s[index].overrun)
   *buf |= UART_IIR_RLSI;


  if ((ier & UART_IER_RDI) &&
      (mdev_state->s[index].rxtx.count >=
        mdev_state->s[index].intr_trigger_level))
   *buf |= UART_IIR_RDI;


  if ((ier & UART_IER_THRI) &&
      (mdev_state->s[index].rxtx.head ==
    mdev_state->s[index].rxtx.tail))
   *buf |= UART_IIR_THRI;


  if ((ier & UART_IER_MSI) &&
      (mdev_state->s[index].uart_reg[131] &
     (UART_MCR_RTS | UART_MCR_DTR)))
   *buf |= UART_IIR_MSI;


  if (*buf == 0)
   *buf = UART_IIR_NO_INT;


  *buf |= 0xC0;
  mutex_unlock(&mdev_state->rxtx_lock);
 }
 break;

 case 133:
 case 131:
  *buf = mdev_state->s[index].uart_reg[offset];
  break;

 case 132:
 {
  u8 lsr = 0;

  mutex_lock(&mdev_state->rxtx_lock);

  if (mdev_state->s[index].rxtx.head !=
     mdev_state->s[index].rxtx.tail)
   lsr |= UART_LSR_DR;


  if (mdev_state->s[index].overrun)
   lsr |= UART_LSR_OE;


  if (mdev_state->s[index].rxtx.head ==
     mdev_state->s[index].rxtx.tail)
   lsr |= UART_LSR_TEMT | UART_LSR_THRE;

  mutex_unlock(&mdev_state->rxtx_lock);
  *buf = lsr;
  break;
 }
 case 130:
  *buf = UART_MSR_DSR | UART_MSR_DDSR | UART_MSR_DCD;

  mutex_lock(&mdev_state->rxtx_lock);

  if (mdev_state->s[index].uart_reg[131] &
       UART_MCR_AFE) {
   if (mdev_state->s[index].rxtx.count <
     mdev_state->s[index].max_fifo_size)
    *buf |= UART_MSR_CTS | UART_MSR_DCTS;
  } else
   *buf |= UART_MSR_CTS | UART_MSR_DCTS;
  mutex_unlock(&mdev_state->rxtx_lock);

  break;

 case 128:
  *buf = mdev_state->s[index].uart_reg[offset];
  break;

 default:
  break;
 }
}
