
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdsp {int max_channels; int lock; } ;


 int EBUSY ;
 int hdsp_input_to_output_key (struct hdsp*,int,int) ;
 int hdsp_playback_to_output_key (struct hdsp*,int,int) ;
 int hdsp_read_gain (struct hdsp*,int) ;
 int hdsp_write_gain (struct hdsp*,int,int) ;
 int snd_hdsp_use_is_exclusive (struct hdsp*) ;
 struct hdsp* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_put_mixer(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct hdsp *hdsp = snd_kcontrol_chip(kcontrol);
 int change;
 int source;
 int destination;
 int gain;
 int addr;

 if (!snd_hdsp_use_is_exclusive(hdsp))
  return -EBUSY;

 source = ucontrol->value.integer.value[0];
 destination = ucontrol->value.integer.value[1];

 if (source >= hdsp->max_channels)
  addr = hdsp_playback_to_output_key(hdsp,source-hdsp->max_channels, destination);
 else
  addr = hdsp_input_to_output_key(hdsp,source, destination);

 gain = ucontrol->value.integer.value[2];

 spin_lock_irq(&hdsp->lock);
 change = gain != hdsp_read_gain(hdsp, addr);
 if (change)
  hdsp_write_gain(hdsp, addr, gain);
 spin_unlock_irq(&hdsp->lock);
 return change;
}
