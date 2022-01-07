
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_2__ {int iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct rme32 {int wcreg_spdif_stream; } ;


 struct rme32* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int snd_rme32_convert_to_aes (int *,int ) ;

__attribute__((used)) static int snd_rme32_control_spdif_stream_get(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value *
           ucontrol)
{
 struct rme32 *rme32 = snd_kcontrol_chip(kcontrol);

 snd_rme32_convert_to_aes(&ucontrol->value.iec958,
     rme32->wcreg_spdif_stream);
 return 0;
}
