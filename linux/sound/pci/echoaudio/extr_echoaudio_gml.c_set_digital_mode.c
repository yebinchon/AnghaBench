
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct echoaudio {int pipe_alloc_mask; int digital_modes; int digital_mode; int lock; int * output_gain; int * input_gain; int ** monitor_gain; scalar_t__ bad_board; } ;


 int DIGITAL_MODE_ADAT ;
 int EAGAIN ;
 int EINVAL ;
 int EIO ;
 int dsp_set_digital_mode (struct echoaudio*,int) ;
 int num_busses_in (struct echoaudio*) ;
 int num_busses_out (struct echoaudio*) ;
 int set_input_gain (struct echoaudio*,int,int ) ;
 int set_monitor_gain (struct echoaudio*,int,int,int ) ;
 int set_output_gain (struct echoaudio*,int,int ) ;
 scalar_t__ snd_BUG_ON (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int update_input_line_level (struct echoaudio*) ;
 int update_output_line_level (struct echoaudio*) ;

__attribute__((used)) static int set_digital_mode(struct echoaudio *chip, u8 mode)
{
 u8 previous_mode;
 int err, i, o;

 if (chip->bad_board)
  return -EIO;


 if (snd_BUG_ON(chip->pipe_alloc_mask))
  return -EAGAIN;

 if (snd_BUG_ON(!(chip->digital_modes & (1 << mode))))
  return -EINVAL;

 previous_mode = chip->digital_mode;
 err = dsp_set_digital_mode(chip, mode);




 if (err >= 0 && previous_mode != mode &&
     (previous_mode == DIGITAL_MODE_ADAT || mode == DIGITAL_MODE_ADAT)) {
  spin_lock_irq(&chip->lock);
  for (o = 0; o < num_busses_out(chip); o++)
   for (i = 0; i < num_busses_in(chip); i++)
    set_monitor_gain(chip, o, i,
       chip->monitor_gain[o][i]);







  for (o = 0; o < num_busses_out(chip); o++)
   set_output_gain(chip, o, chip->output_gain[o]);
  update_output_line_level(chip);
  spin_unlock_irq(&chip->lock);
 }

 return err;
}
