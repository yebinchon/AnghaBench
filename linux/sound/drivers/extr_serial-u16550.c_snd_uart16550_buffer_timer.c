
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timer_list {int dummy; } ;
struct snd_uart16550 {int open_lock; } ;


 int buffer_timer ;
 struct snd_uart16550* from_timer (struct snd_uart16550*,struct timer_list*,int ) ;
 int snd_uart16550_del_timer (struct snd_uart16550*) ;
 int snd_uart16550_io_loop (struct snd_uart16550*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void snd_uart16550_buffer_timer(struct timer_list *t)
{
 unsigned long flags;
 struct snd_uart16550 *uart;

 uart = from_timer(uart, t, buffer_timer);
 spin_lock_irqsave(&uart->open_lock, flags);
 snd_uart16550_del_timer(uart);
 snd_uart16550_io_loop(uart);
 spin_unlock_irqrestore(&uart->open_lock, flags);
}
