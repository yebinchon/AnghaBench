
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uart16550 {scalar_t__ timer_running; int buffer_timer; } ;


 int del_timer (int *) ;

__attribute__((used)) static inline void snd_uart16550_del_timer(struct snd_uart16550 *uart)
{
 if (uart->timer_running) {
  del_timer(&uart->buffer_timer);
  uart->timer_running = 0;
 }
}
