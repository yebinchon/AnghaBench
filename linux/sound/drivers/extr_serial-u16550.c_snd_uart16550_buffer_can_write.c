
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_uart16550 {scalar_t__ buff_in_count; } ;


 scalar_t__ TX_BUFF_SIZE ;

__attribute__((used)) static inline int snd_uart16550_buffer_can_write(struct snd_uart16550 *uart,
       int Num)
{
 if (uart->buff_in_count + Num < TX_BUFF_SIZE)
  return 1;
 else
  return 0;
}
