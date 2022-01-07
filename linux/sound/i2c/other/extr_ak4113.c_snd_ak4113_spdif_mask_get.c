
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int AK4113_REG_RXCSB_SIZE ;
 int memset (int ,int,int ) ;

__attribute__((used)) static int snd_ak4113_spdif_mask_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 memset(ucontrol->value.iec958.status, 0xff, AK4113_REG_RXCSB_SIZE);
 return 0;
}
