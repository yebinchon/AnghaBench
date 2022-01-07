
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_msnd {int mode; int flags; int play_period_bytes; } ;


 int FMODE_WRITE ;
 int F_WRITEFLUSH ;
 int F_WRITING ;
 int clear_bit (int ,int *) ;
 int current ;
 int get_play_delay_jiffies (struct snd_msnd*,int ) ;
 int schedule_timeout_interruptible (int ) ;
 int set_bit (int ,int *) ;
 int signal_pending (int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void snd_msnd_dsp_write_flush(struct snd_msnd *chip)
{
 if (!(chip->mode & FMODE_WRITE) || !test_bit(F_WRITING, &chip->flags))
  return;
 set_bit(F_WRITEFLUSH, &chip->flags);



 clear_bit(F_WRITEFLUSH, &chip->flags);
 if (!signal_pending(current))
  schedule_timeout_interruptible(
   get_play_delay_jiffies(chip, chip->play_period_bytes));
 clear_bit(F_WRITING, &chip->flags);
}
