
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int akm; } ;
struct ak4113 {struct snd_ice1712* change_callback_private; } ;


 scalar_t__ EXT_SPDIF_TYPE ;
 int qtet_akm_set_rate_val (int ,int) ;
 scalar_t__ qtet_get_spdif_master_type (struct snd_ice1712*) ;
 int snd_ak4113_external_rate (struct ak4113*) ;

__attribute__((used)) static void qtet_ak4113_change(struct ak4113 *ak4113, unsigned char c0,
  unsigned char c1)
{
 struct snd_ice1712 *ice = ak4113->change_callback_private;
 int rate;
 if ((qtet_get_spdif_master_type(ice) == EXT_SPDIF_TYPE) &&
   c1) {

  rate = snd_ak4113_external_rate(ak4113);


  qtet_akm_set_rate_val(ice->akm, rate);
 }
}
