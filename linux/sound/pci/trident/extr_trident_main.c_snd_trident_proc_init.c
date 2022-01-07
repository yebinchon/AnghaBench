
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {scalar_t__ device; int card; } ;


 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int snd_card_ro_proc_new (int ,char const*,struct snd_trident*,int ) ;
 int snd_trident_proc_read ;

__attribute__((used)) static void snd_trident_proc_init(struct snd_trident *trident)
{
 const char *s = "trident";

 if (trident->device == TRIDENT_DEVICE_ID_SI7018)
  s = "sis7018";
 snd_card_ro_proc_new(trident->card, s, trident, snd_trident_proc_read);
}
