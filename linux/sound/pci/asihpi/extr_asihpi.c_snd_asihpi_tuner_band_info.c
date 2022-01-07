
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int HPI_TUNER_BAND_LAST ;
 int asihpi_tuner_band_names ;
 int asihpi_tuner_band_query (struct snd_kcontrol*,int *,int) ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,int ) ;

__attribute__((used)) static int snd_asihpi_tuner_band_info(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_info *uinfo)
{
 u16 tuner_bands[HPI_TUNER_BAND_LAST];
 int num_bands = 0;

 num_bands = asihpi_tuner_band_query(kcontrol, tuner_bands,
    HPI_TUNER_BAND_LAST);

 if (num_bands < 0)
  return num_bands;

 return snd_ctl_enum_info(uinfo, 1, num_bands, asihpi_tuner_band_names);
}
