
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uart16550 {int timer_running; int buffer_timer; } ;


 int HZ ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;

__attribute__((used)) static inline void snd_uart16550_add_timer(struct snd_uart16550 *uart)
{
 if (!uart->timer_running) {

  mod_timer(&uart->buffer_timer, jiffies + (HZ + 255) / 256);
  uart->timer_running = 1;
 }
}
