
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lola_pin {int nid; int is_analog; unsigned int max_level; scalar_t__ cur_gain_step; scalar_t__ fixed_gain_list_len; scalar_t__ config_default_reg; int amp_offset; int amp_step_size; int amp_num_steps; int amp_mute; } ;
struct lola {TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int CAPT ;
 int EINVAL ;
 int LOLA_AMP_MUTE_CAPABLE (unsigned int) ;
 int LOLA_AMP_NUM_STEPS (unsigned int) ;
 int LOLA_AMP_OFFSET (unsigned int) ;
 int LOLA_AMP_STEP_SIZE (unsigned int) ;
 int LOLA_PAR_AMP_IN_CAP ;
 int LOLA_PAR_AMP_OUT_CAP ;
 int LOLA_PAR_AUDIO_WIDGET_CAP ;
 int LOLA_VERB_GET_MAX_LEVEL ;
 int PLAY ;
 int dev_err (int ,char*,int,...) ;
 int lola_codec_read (struct lola*,int,int ,int ,int ,unsigned int*,int *) ;
 int lola_read_param (struct lola*,int,int ,unsigned int*) ;

__attribute__((used)) static int lola_init_pin(struct lola *chip, struct lola_pin *pin,
    int dir, int nid)
{
 unsigned int val;
 int err;

 pin->nid = nid;
 err = lola_read_param(chip, nid, LOLA_PAR_AUDIO_WIDGET_CAP, &val);
 if (err < 0) {
  dev_err(chip->card->dev, "Can't read wcaps for 0x%x\n", nid);
  return err;
 }
 val &= 0x00f00fff;
 if (val == 0x00400200)
  pin->is_analog = 0;
 else if (val == 0x0040000a && dir == CAPT)
  pin->is_analog = 1;
 else if (val == 0x0040000c && dir == PLAY)
  pin->is_analog = 1;
 else {
  dev_err(chip->card->dev, "Invalid wcaps 0x%x for 0x%x\n", val, nid);
  return -EINVAL;
 }



 if (!pin->is_analog)
  return 0;

 if (dir == PLAY)
  err = lola_read_param(chip, nid, LOLA_PAR_AMP_OUT_CAP, &val);
 else
  err = lola_read_param(chip, nid, LOLA_PAR_AMP_IN_CAP, &val);
 if (err < 0) {
  dev_err(chip->card->dev, "Can't read AMP-caps for 0x%x\n", nid);
  return err;
 }

 pin->amp_mute = LOLA_AMP_MUTE_CAPABLE(val);
 pin->amp_step_size = LOLA_AMP_STEP_SIZE(val);
 pin->amp_num_steps = LOLA_AMP_NUM_STEPS(val);
 if (pin->amp_num_steps) {

  pin->amp_num_steps++;
  pin->amp_step_size++;
 }
 pin->amp_offset = LOLA_AMP_OFFSET(val);

 err = lola_codec_read(chip, nid, LOLA_VERB_GET_MAX_LEVEL, 0, 0, &val,
         ((void*)0));
 if (err < 0) {
  dev_err(chip->card->dev, "Can't get MAX_LEVEL 0x%x\n", nid);
  return err;
 }
 pin->max_level = val & 0x3ff;

 pin->config_default_reg = 0;
 pin->fixed_gain_list_len = 0;
 pin->cur_gain_step = 0;

 return 0;
}
