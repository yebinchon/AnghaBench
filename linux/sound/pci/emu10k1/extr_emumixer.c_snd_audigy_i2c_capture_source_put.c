
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int dummy; } ;
struct snd_emu10k1 {unsigned int i2c_capture_source; unsigned int** i2c_capture_volume; int emu_lock; scalar_t__ port; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
typedef int ngain ;


 int ADC_ATTEN_ADCL ;
 int ADC_ATTEN_ADCR ;
 int ADC_MUX ;
 scalar_t__ A_IOCFG ;
 int EINVAL ;
 int inl (scalar_t__) ;
 int outl (int,scalar_t__) ;
 int snd_emu10k1_i2c_write (struct snd_emu10k1*,int ,int) ;
 struct snd_emu10k1* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_audigy_i2c_capture_source_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct snd_emu10k1 *emu = snd_kcontrol_chip(kcontrol);
 unsigned int source_id;
 unsigned int ngain, ogain;
 u32 gpio;
 int change = 0;
 unsigned long flags;
 u32 source;




 source_id = ucontrol->value.enumerated.item[0];


 if (source_id >= 2)
  return -EINVAL;
 change = (emu->i2c_capture_source != source_id);
 if (change) {
  snd_emu10k1_i2c_write(emu, ADC_MUX, 0);
  spin_lock_irqsave(&emu->emu_lock, flags);
  gpio = inl(emu->port + A_IOCFG);
  if (source_id==0)
   outl(gpio | 0x4, emu->port + A_IOCFG);
  else
   outl(gpio & ~0x4, emu->port + A_IOCFG);
  spin_unlock_irqrestore(&emu->emu_lock, flags);

  ngain = emu->i2c_capture_volume[source_id][0];
  ogain = emu->i2c_capture_volume[emu->i2c_capture_source][0];
  if (ngain != ogain)
   snd_emu10k1_i2c_write(emu, ADC_ATTEN_ADCL, ((ngain) & 0xff));
  ngain = emu->i2c_capture_volume[source_id][1];
  ogain = emu->i2c_capture_volume[emu->i2c_capture_source][1];
  if (ngain != ogain)
   snd_emu10k1_i2c_write(emu, ADC_ATTEN_ADCR, ((ngain) & 0xff));

  source = 1 << (source_id + 2);
  snd_emu10k1_i2c_write(emu, ADC_MUX, source);
  emu->i2c_capture_source = source_id;
 }
        return change;
}
