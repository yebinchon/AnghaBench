
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int cs8403_stream_bits; } ;
struct snd_ice1712 {TYPE_2__ spdif; } ;
struct TYPE_3__ {int iec958; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;


 int snd_cs8403_decode_spdif_bits (int *,int ) ;

__attribute__((used)) static void delta_spdif_stream_get(struct snd_ice1712 *ice, struct snd_ctl_elem_value *ucontrol)
{
 snd_cs8403_decode_spdif_bits(&ucontrol->value.iec958, ice->spdif.cs8403_stream_bits);
}
