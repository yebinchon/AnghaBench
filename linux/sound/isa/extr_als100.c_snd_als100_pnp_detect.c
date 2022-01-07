
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pnp_card_link {int dummy; } ;
struct pnp_card_device_id {int dummy; } ;


 int ENODEV ;
 int SNDRV_CARDS ;
 int als100_devices ;
 int * enable ;
 int snd_card_als100_probe (int,struct pnp_card_link*,struct pnp_card_device_id const*) ;

__attribute__((used)) static int snd_als100_pnp_detect(struct pnp_card_link *card,
     const struct pnp_card_device_id *id)
{
 static int dev;
 int res;

 for ( ; dev < SNDRV_CARDS; dev++) {
  if (!enable[dev])
   continue;
  res = snd_card_als100_probe(dev, card, id);
  if (res < 0)
   return res;
  dev++;
  als100_devices++;
  return 0;
 }
 return -ENODEV;
}
