
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {int spdif_bits; } ;


 int SI_SPDIF_CS ;
 int TRID_REG (struct snd_trident*,int ) ;
 int outl (int ,int ) ;
 int snd_trident_sis_reset (struct snd_trident*) ;
 int snd_trident_stop_all_voices (struct snd_trident*) ;

__attribute__((used)) static int snd_trident_sis_init(struct snd_trident *trident)
{
 int err;

 if ((err = snd_trident_sis_reset(trident)) < 0)
  return err;

 snd_trident_stop_all_voices(trident);


 outl(trident->spdif_bits, TRID_REG(trident, SI_SPDIF_CS));

 return 0;
}
