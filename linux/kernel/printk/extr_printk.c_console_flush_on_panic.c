
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum con_flush_mode { ____Placeholder_con_flush_mode } con_flush_mode ;


 int CONSOLE_REPLAY_ALL ;
 int console_idx ;
 scalar_t__ console_may_schedule ;
 int console_seq ;
 int console_trylock () ;
 int console_unlock () ;
 int log_first_idx ;
 int log_first_seq ;
 int logbuf_lock_irqsave (unsigned long) ;
 int logbuf_unlock_irqrestore (unsigned long) ;

void console_flush_on_panic(enum con_flush_mode mode)
{







 console_trylock();
 console_may_schedule = 0;

 if (mode == CONSOLE_REPLAY_ALL) {
  unsigned long flags;

  logbuf_lock_irqsave(flags);
  console_seq = log_first_seq;
  console_idx = log_first_idx;
  logbuf_unlock_irqrestore(flags);
 }
 console_unlock();
}
