
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {unsigned int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int ARRAY_SIZE (int *) ;
 int HPI_TUNER_BAND_LAST ;
 int asihpi_tuner_band_query (struct snd_kcontrol*,int *,int) ;
 int hpi_handle_error (int ) ;
 int hpi_tuner_set_band (int ,int ) ;

__attribute__((used)) static int snd_asihpi_tuner_band_put(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{



 u32 h_control = kcontrol->private_value;
 unsigned int idx;
 u16 band;
 u16 tuner_bands[HPI_TUNER_BAND_LAST];
 u32 num_bands = 0;

 num_bands = asihpi_tuner_band_query(kcontrol, tuner_bands,
   HPI_TUNER_BAND_LAST);

 idx = ucontrol->value.enumerated.item[0];
 if (idx >= ARRAY_SIZE(tuner_bands))
  idx = ARRAY_SIZE(tuner_bands) - 1;
 band = tuner_bands[idx];
 hpi_handle_error(hpi_tuner_set_band(h_control, band));

 return 1;
}
