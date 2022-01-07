
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_sb {int mixer_lock; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int SB_DT019X_CAPTURE_SW ;




 struct snd_sb* snd_kcontrol_chip (struct snd_kcontrol*) ;
 unsigned char snd_sbmixer_read (struct snd_sb*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int snd_dt019x_input_sw_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_sb *sb = snd_kcontrol_chip(kcontrol);
 unsigned long flags;
 unsigned char oval;

 spin_lock_irqsave(&sb->mixer_lock, flags);
 oval = snd_sbmixer_read(sb, SB_DT019X_CAPTURE_SW);
 spin_unlock_irqrestore(&sb->mixer_lock, flags);
 switch (oval & 0x07) {
 case 131:
  ucontrol->value.enumerated.item[0] = 0;
  break;
 case 128:
  ucontrol->value.enumerated.item[0] = 1;
  break;
 case 130:
  ucontrol->value.enumerated.item[0] = 2;
  break;
 case 129:
  ucontrol->value.enumerated.item[0] = 4;
  break;







 default:
  ucontrol->value.enumerated.item[0] = 4;
  break;
 }
 return 0;
}
