
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct via82xx {int port; } ;
struct TYPE_4__ {scalar_t__ index; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_5__ {int* item; } ;
struct TYPE_6__ {TYPE_2__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;


 int VIA_REG_CAPTURE_CHANNEL ;
 int VIA_REG_CAPTURE_CHANNEL_MIC ;
 int inb (unsigned long) ;
 struct via82xx* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_via8233_capture_source_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 struct via82xx *chip = snd_kcontrol_chip(kcontrol);
 unsigned long port = chip->port + (kcontrol->id.index ? (VIA_REG_CAPTURE_CHANNEL + 0x10) : VIA_REG_CAPTURE_CHANNEL);
 ucontrol->value.enumerated.item[0] = inb(port) & VIA_REG_CAPTURE_CHANNEL_MIC ? 1 : 0;
 return 0;
}
