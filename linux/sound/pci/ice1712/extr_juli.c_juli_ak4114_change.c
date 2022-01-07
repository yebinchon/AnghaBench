
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ice1712 {int akm; scalar_t__ (* is_spdif_master ) (struct snd_ice1712*) ;} ;
struct ak4114 {struct snd_ice1712* change_callback_private; } ;


 int juli_akm_set_rate_val (int ,int) ;
 int snd_ak4114_external_rate (struct ak4114*) ;
 scalar_t__ stub1 (struct snd_ice1712*) ;

__attribute__((used)) static void juli_ak4114_change(struct ak4114 *ak4114, unsigned char c0,
          unsigned char c1)
{
 struct snd_ice1712 *ice = ak4114->change_callback_private;
 int rate;
 if (ice->is_spdif_master(ice) && c1) {

  rate = snd_ak4114_external_rate(ak4114);


  juli_akm_set_rate_val(ice->akm, rate);
 }
}
