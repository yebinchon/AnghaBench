
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dest_phys_out_ofs; int dest_phys_outs; int src_stream_out_ofs; int src_stream_outs; int src_phys_ins; int dest_stream_ins; } ;
struct lola {TYPE_1__ mixer; } ;


 int CAPT ;
 int PLAY ;
 int create_analog_mixer (struct lola*,int ,char*) ;
 int create_dest_gain_mixer (struct lola*,int ,int ,int ,int ,char*) ;
 int create_input_src_mixer (struct lola*) ;
 int create_src_gain_mixer (struct lola*,int ,int ,char*) ;
 int init_mixer_values (struct lola*) ;

int lola_create_mixer(struct lola *chip)
{
 int err;

 err = create_analog_mixer(chip, PLAY, "Analog Playback Volume");
 if (err < 0)
  return err;
 err = create_analog_mixer(chip, CAPT, "Analog Capture Volume");
 if (err < 0)
  return err;
 err = create_input_src_mixer(chip);
 if (err < 0)
  return err;
 err = create_src_gain_mixer(chip, chip->mixer.src_phys_ins, 0,
        "Digital Capture Volume");
 if (err < 0)
  return err;
 err = create_src_gain_mixer(chip, chip->mixer.src_stream_outs,
        chip->mixer.src_stream_out_ofs,
        "Digital Playback Volume");
 if (err < 0)
  return err;
 return init_mixer_values(chip);
}
