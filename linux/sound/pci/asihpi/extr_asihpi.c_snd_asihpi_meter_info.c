
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_4__ {int max; scalar_t__ min; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_info {TYPE_1__ value; int count; int type; } ;


 int HPI_MAX_CHANNELS ;
 int SNDRV_CTL_ELEM_TYPE_INTEGER ;
 scalar_t__ hpi_meter_query_channels (int ,int *) ;

__attribute__((used)) static int snd_asihpi_meter_info(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_info *uinfo)
{
 u32 h_control = kcontrol->private_value;
 u32 count;
 u16 err;
 err = hpi_meter_query_channels(h_control, &count);
 if (err)
  count = HPI_MAX_CHANNELS;

 uinfo->type = SNDRV_CTL_ELEM_TYPE_INTEGER;
 uinfo->count = count;
 uinfo->value.integer.min = 0;
 uinfo->value.integer.max = 0x7FFFFFFF;
 return 0;
}
