
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu8000 {int dummy; } ;


 int EMU8000_SMALR_READ (struct snd_emu8000*) ;
 int current ;
 int schedule_timeout_interruptible (int) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static void
snd_emu8000_read_wait(struct snd_emu8000 *emu)
{
 while ((EMU8000_SMALR_READ(emu) & 0x80000000) != 0) {
  schedule_timeout_interruptible(1);
  if (signal_pending(current))
   break;
 }
}
